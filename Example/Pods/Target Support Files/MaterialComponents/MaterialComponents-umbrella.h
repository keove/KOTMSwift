#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "CAMediaTimingFunction+MDCAnimationTiming.h"
#import "MaterialAnimationTiming.h"
#import "UIView+MDCTimingFunction.h"
#import "MaterialButtons.h"
#import "MDCButton.h"
#import "MDCFlatButton.h"
#import "MDCFloatingButton+Animation.h"
#import "MDCFloatingButton.h"
#import "MDCRaisedButton.h"
#import "MaterialButtons+ButtonThemer.h"
#import "MDCButtonScheme.h"
#import "MDCContainedButtonThemer.h"
#import "MDCFloatingActionButtonThemer.h"
#import "MDCOutlinedButtonThemer.h"
#import "MDCTextButtonThemer.h"
#import "MaterialButtons+ColorThemer.h"
#import "MDCButtonColorThemer.h"
#import "MDCContainedButtonColorThemer.h"
#import "MDCFloatingButtonColorThemer.h"
#import "MDCOutlinedButtonColorThemer.h"
#import "MDCTextButtonColorThemer.h"
#import "MaterialButtons+ShapeThemer.h"
#import "MDCButtonShapeThemer.h"
#import "MDCFloatingButtonShapeThemer.h"
#import "MaterialButtons+TypographyThemer.h"
#import "MDCButtonTypographyThemer.h"
#import "MaterialElevation.h"
#import "MDCElevatable.h"
#import "MDCElevationOverriding.h"
#import "UIColor+MaterialElevation.h"
#import "UIView+MaterialElevationResponding.h"
#import "MaterialInk.h"
#import "MDCInkGestureRecognizer.h"
#import "MDCInkTouchController.h"
#import "MDCInkView.h"
#import "MaterialOverlayWindow.h"
#import "MDCOverlayWindow.h"
#import "MaterialPalettes.h"
#import "MDCPalettes.h"
#import "MaterialRipple.h"
#import "MDCRippleTouchController.h"
#import "MDCRippleView.h"
#import "MDCStatefulRippleView.h"
#import "MaterialShadowElevations.h"
#import "MDCShadowElevations.h"
#import "MaterialShadowLayer.h"
#import "MDCShadowLayer.h"
#import "MaterialShapeLibrary.h"
#import "MDCCornerTreatment+CornerTypeInitalizer.h"
#import "MDCCurvedCornerTreatment.h"
#import "MDCCurvedRectShapeGenerator.h"
#import "MDCCutCornerTreatment.h"
#import "MDCPillShapeGenerator.h"
#import "MDCRoundedCornerTreatment.h"
#import "MDCSlantedRectShapeGenerator.h"
#import "MDCTriangleEdgeTreatment.h"
#import "MaterialShapes.h"
#import "MDCCornerTreatment.h"
#import "MDCEdgeTreatment.h"
#import "MDCPathGenerator.h"
#import "MDCRectangleShapeGenerator.h"
#import "MDCShapedShadowLayer.h"
#import "MDCShapedView.h"
#import "MDCShapeGenerating.h"
#import "MaterialSnackbar.h"
#import "MDCSnackbarAlignment.h"
#import "MDCSnackbarManager.h"
#import "MDCSnackbarMessage.h"
#import "MDCSnackbarMessageView.h"
#import "MaterialSnackbar+ColorThemer.h"
#import "MDCSnackbarColorThemer.h"
#import "MaterialTextFields.h"
#import "MDCIntrinsicHeightTextView.h"
#import "MDCMultilineTextField.h"
#import "MDCMultilineTextInputDelegate.h"
#import "MDCTextField.h"
#import "MDCTextFieldPositioningDelegate.h"
#import "MDCTextInput.h"
#import "MDCTextInputBorderView.h"
#import "MDCTextInputCharacterCounter.h"
#import "MDCTextInputController.h"
#import "MDCTextInputControllerBase.h"
#import "MDCTextInputControllerFilled.h"
#import "MDCTextInputControllerFloatingPlaceholder.h"
#import "MDCTextInputControllerFullWidth.h"
#import "MDCTextInputControllerLegacyDefault.h"
#import "MDCTextInputControllerLegacyFullWidth.h"
#import "MDCTextInputControllerOutlined.h"
#import "MDCTextInputControllerOutlinedTextArea.h"
#import "MDCTextInputControllerUnderline.h"
#import "MDCTextInputUnderlineView.h"
#import "MaterialTextFields+ColorThemer.h"
#import "MDCFilledTextFieldColorThemer.h"
#import "MDCOutlinedTextFieldColorThemer.h"
#import "MDCTextFieldColorThemer.h"
#import "MaterialTextFields+Theming.h"
#import "MDCTextInputControllerFilled+MaterialTheming.h"
#import "MDCTextInputControllerOutlined+MaterialTheming.h"
#import "MaterialTextFields+TypographyThemer.h"
#import "MDCTextFieldTypographyThemer.h"
#import "MaterialThemes.h"
#import "MDCColorScheme.h"
#import "MDCFontScheme.h"
#import "MDCTonalColorScheme.h"
#import "MDCTonalPalette.h"
#import "MaterialTypography.h"
#import "MDCFontScaler.h"
#import "MDCFontTextStyle.h"
#import "MDCTypography.h"
#import "UIFont+MaterialScalable.h"
#import "UIFont+MaterialSimpleEquality.h"
#import "UIFont+MaterialTypography.h"
#import "UIFontDescriptor+MaterialTypography.h"
#import "MaterialApplication.h"
#import "UIApplication+AppExtensions.h"
#import "MaterialColor.h"
#import "UIColor+MaterialBlending.h"
#import "UIColor+MaterialDynamic.h"
#import "MaterialKeyboardWatcher.h"
#import "MDCKeyboardWatcher.h"
#import "MaterialMath.h"
#import "MDCMath.h"
#import "MaterialOverlay.h"
#import "MDCOverlayImplementor.h"
#import "MDCOverlayObserver.h"
#import "MDCOverlayTransitioning.h"
#import "MaterialColorScheme.h"
#import "MDCLegacyColorScheme.h"
#import "MDCLegacyTonalColorScheme.h"
#import "MDCLegacyTonalPalette.h"
#import "MDCSemanticColorScheme.h"
#import "MaterialContainerScheme.h"
#import "MDCContainerScheme.h"
#import "MaterialShapeScheme.h"
#import "MDCShapeCategory.h"
#import "MDCShapeScheme.h"
#import "MaterialTypographyScheme.h"
#import "MDCLegacyFontScheme.h"
#import "MDCTypographyScheme.h"

FOUNDATION_EXPORT double MaterialComponentsVersionNumber;
FOUNDATION_EXPORT const unsigned char MaterialComponentsVersionString[];

