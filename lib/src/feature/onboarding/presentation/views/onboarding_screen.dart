import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pretium/src/feature/core/route/app_routes.dart';
import 'package:pretium/src/feature/core/shared/loading_button.dart';
import 'package:pretium/src/feature/core/shared/widget_extensions.dart';
import 'package:pretium/src/feature/core/theme/colors.dart';
import 'package:pretium/src/feature/core/typography/typography.dart';
import 'package:pretium/src/feature/onboarding/presentation/views/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../model/onboard_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _page = PageController();

  final List<OnBoardModel> board = [
    OnBoardModel(
      title: 'Direct Pay',
      icon: Icons.credit_card,
      subTitle: 'Pay with crypto across Africa effortlessly.',
    ),
    OnBoardModel(
      title: 'Accept  Payments',
      icon: Icons.wallet,
      subTitle: 'Accept stablecoins payments hassle-free.',
    ),
    OnBoardModel(
      title: 'Pay Bills',
      icon: Icons.receipt,
      subTitle: 'Pay for utilities and earn rewards',
    ),
  ];

  int? currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const Spacer(),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    pushToAndClearStack(context, const LoginScreen());
                  },
                  child: Text(
                    'Skip',
                    style: AppTextStyle.formTextC.copyWith(
                      fontWeight: AppFontWeight.semiBold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 10,
                // color: Colors.amber,
                child: PageView.builder(
                  itemCount: board.length,
                  controller: _page,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (value) {
                    currentIndex = value;
                    setState(() {});
                  },
                  itemBuilder:
                      (context, index) => Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: AppColors.primary.withOpacity(0.1),
                            child: Icon(
                              board[index].icon,
                              color: AppColors.primary,
                              size: 50,
                            ),
                          ),
                          10.0.spacingH,
                          Text(
                            board[index].title,
                            textAlign: TextAlign.center,
                            textScaleFactor: 1,
                            style: AppTextStyle.headline1.copyWith(
                              fontSize: 25,
                              fontWeight: AppFontWeight.semiBold,
                            ),
                          ),
                          10.0.spacingH,
                          Text(
                            board[index].subTitle,
                            textAlign: TextAlign.center,
                            // textScaleFactor: 0.8,
                            style: AppTextStyle.formText,
                          ),
                        ],
                      ),
                ),
              ),

              // SizedBox(
              //   height: 530.h,
              //   // color: Colors.amber,
              //   child: PageView.builder(
              //     itemCount: board.length,
              //     controller: _page,
              //     scrollDirection: Axis.horizontal,
              //     itemBuilder: (context, index) => Column(
              //       children: [
              //         ImageWidget(
              //           'onboarding${index + 1}',
              //           height: 350.h,
              //         ),
              //         10.0.spacingH,
              //         Text(
              //           board[index].title,
              //           textAlign: TextAlign.center,
              //           textScaleFactor: 1,
              //           style: AppTextStyle.headline1.copyWith(
              //               fontSize: 25.h, fontWeight: AppFontWeight.semiBold),
              //         ),
              //         // 10.0.spacingH,
              //         Text(
              //           board[index].subTitle,
              //           textAlign: TextAlign.center,
              //           // textScaleFactor: 0.8,
              //           style: AppTextStyle.formText,
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              SmoothPageIndicator(
                controller: _page,
                count: 3,
                effect: ExpandingDotsEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  expansionFactor: 3,
                  dotColor: AppColors.grey,
                  activeDotColor: AppColors.primary,
                ),
              ),

              CarouselSlider(
                items: List.generate(board.length, (ind) => const SizedBox()),
                options: CarouselOptions(
                  autoPlay: false,
                  aspectRatio: 20 / 2,
                  onPageChanged: (index, r) {
                    _page.jumpToPage(index);
                    currentIndex = index;
                    setState(() {});
                  },
                ),
              ),
              // const Spacer(),
              LoadingButton(
                isLoading: false,
                child: Text(
                  currentIndex == 2 ? "Get's Started" : 'Next',
                  // textScaleFactor: 0.8,
                  style: AppTextStyle.pryBtnStyle,
                ),
                onPressed: () {
                  if (currentIndex == 2) {
                    pushToAndClearStack(context, const LoginScreen());
                  } else {
                    _page.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  }
                },
              ),

              // SvgWidget(AssetConstants.lincense)
              // ImageWidget(AssetConstants.lincense)
            ],
          ),
        ),
      ),
    );
  }
}
