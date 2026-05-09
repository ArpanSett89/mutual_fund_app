import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mutual_fund_app/application/scheme_list/scheme_list_bloc.dart';
import 'package:mutual_fund_app/presentation/theme/colors.dart';

@RoutePage()
class SchemeDetailsPage extends StatelessWidget {
  const SchemeDetailsPage({super.key});

  void _showInvestBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: ThemeColors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      builder: (context) {
        return InvestBottomSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.white,
      appBar: AppBar(elevation: 0, title: const Text('Scheme Details')),

      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: ElevatedButton(
            onPressed: () => _showInvestBottomSheet(context),
            child: const Text('Invest Now'),
          ),
        ),
      ),

      body: BlocBuilder<SchemeListBloc, SchemeListState>(
        buildWhen: (previous, current) =>
            previous.isFetchingDetails != current.isFetchingDetails,
        builder: (context, state) {
          if (state.isFetchingDetails) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  color: ThemeColors.primary,
                  child: Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.schemeDetails.meta.schemeName,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: ThemeColors.white,
                        ),
                      ),

                      Wrap(
                        spacing: 8,
                        children: [
                          _buildTag(
                            state.schemeDetails.meta.schemeCategory,
                            context,
                          ),
                          _buildTag(
                            state.schemeDetails.meta.schemeType,
                            context,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: state.schemeDetails.navHistory.length,
                    itemBuilder: (context, index) {
                      final nav = state.schemeDetails.navHistory[index];

                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 18,
                        ),
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: ThemeColors.white,
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                            color: ThemeColors.primary.withValues(alpha: 0.08),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: ThemeColors.black.withValues(alpha: 0.04),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              nav.date,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Text(
                              '₹ ${nav.nav}',
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _buildTag(String title, BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: ThemeColors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: Theme.of(
          context,
        ).textTheme.bodySmall!.copyWith(color: ThemeColors.white),
      ),
    );
  }
}

class InvestBottomSheet extends StatefulWidget {
  const InvestBottomSheet({super.key});

  @override
  State<InvestBottomSheet> createState() => _InvestBottomSheetState();
}

class _InvestBottomSheetState extends State<InvestBottomSheet> {
  final TextEditingController amountController = TextEditingController();
  @override
  void dispose() {
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 24,
        bottom: MediaQuery.of(context).viewInsets.bottom + 24,
      ),
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 48,
              height: 5,
              decoration: BoxDecoration(
                color: ThemeColors.black.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

          Text(
            'Invest in Scheme',
            style: Theme.of(context).textTheme.titleLarge,
          ),

          Text(
            'Grindlays Super Saver Income Fund',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(color: ThemeColors.darkGray),
          ),
          TextField(
            controller: amountController,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              hintText: 'Enter investment amount',
              prefixText: '₹ ',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          Text(
            'Minimum investment ₹100',
            style: Theme.of(
              context,
            ).textTheme.bodySmall!.copyWith(color: ThemeColors.darkGray),
          ),

          Container(
            margin: const EdgeInsets.only(top: 20),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                final amount = int.tryParse(amountController.text.trim()) ?? 0;

                if (amount < 100) {
                  Navigator.pop(context);

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: ThemeColors.red,
                      content: Text('Minimum investment is ₹100'),
                    ),
                  );

                  amountController.clear();
                  return;
                }

                Navigator.pop(context);

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Investment successful!')),
                );

                amountController.clear();
              },
              child: Text('Confirm Investment'),
            ),
          ),
        ],
      ),
    );
  }
}
