class Subscriptions::FailurePage < MainLayout
  def page_title
    "No subscription"
  end

  def content
    section class: "bg-primary-700 rounded-lg shadow-lg" do
      div class: "max-w-2xl mx-auto text-center pt-10 pb-10 sm:pb-18 md:pb-24 px-4 sm:px-6 lg:px-8" do
        render_upgrade_image

        h2 class: "mt-4 text-3xl font-extrabold text-white sm:text-4xl" do
          text "No active subscription found"
        end

        para class: "mt-4 text-lg leading-6 text-primary-100" do
          text "But don't despair! Click the button below and make it happen!"
        end

        if (user = current_user)
          if user.subscription
            button "Manage your subscription",
              class: "mt-8 mx-auto w-full inline-flex items-center justify-center px-5 py-3 border border-transparent text-base font-medium rounded-md text-primary-700 bg-white hover:bg-primary-50 sm:w-auto",
              data_controller: "stripe",
              data_action: "click->stripe#redirectToBillingPortal"
          else
            render_upgrade_link
          end
        else
          render_upgrade_link
        end

        div class: "mt-2 text-xs text-gray-200" do
          span "Something wrong? "
          a "Send us an email!", href: "mailto:#{Application.settings.support_email}?subject=Subscription Issue", class: "underline"
        end
      end
    end
  end

  private def render_upgrade_link
    link "Upgrade to Pro", Subscriptions::Index, class: "mt-8 mx-auto w-full inline-flex items-center justify-center px-5 py-3 border border-transparent text-base font-medium rounded-md text-primary-700 bg-white hover:bg-primary-50 sm:w-auto"
  end

  private def render_upgrade_image
    tag "svg", class: "w-2/3 mx-auto h-auto", data_name: "Layer 1", height: "773.96", id: "f925b0b9-bc71-491a-a51e-0715ff181b57", viewBox: "0 0 1066 773.96", width: "1066", xmlns: "http://www.w3.org/2000/svg" do
      title "upgrade"
      tag "path", d: "M1062.19,432.89c.59-6.77.9-13.65.9-20.6,0-108.83-73.84-197.06-164.92-197.06-29,0-56.34,9-80,24.75-64.47-50-148.64-80.21-240.72-80.21-149.83,0-278.71,80.07-335.89,194.9-3.17-.22-6.37-.34-9.6-.34C140.83,354.33,67,442.55,67,551.38c0,40,10,77.23,27.14,108.31h0C94.14,757.6,172.59,837,269.36,837h122l.54-.93c7.17-11.64,24.34-14.55,36.3-7.94,3.16,1.74,6.1,4,9.63,4.8,14.13,3,23.62-19.73,37.92-17.52,7.18,1.11,12.78,8.53,20,7.77,4.79-.51,8.42-4.52,12.92-6.22,7.21-2.74,14.52,1.06,19.57,7.23,2.93-8.43,2.91-18.42,7.65-26.15,7.17-11.64,24.34-14.55,36.3-7.94,3.16,1.74,6.1,4,9.63,4.8,14.13,3,23.62-19.73,37.92-17.52,7.18,1.11,12.78,8.53,20,7.77,4.79-.51,8.42-4.52,12.92-6.22,11.22-4.27,22.71,7.32,25.47,19a81,81,0,0,1,1.69,15.64c9.68-4.69,17.86-17.88,28.91-16.17,7.18,1.11,12.78,8.53,20,7.77,4.79-.51,8.42-4.52,12.92-6.22,11.22-4.27,22.71,7.32,25.47,19,1.47,6.2,1.57,12.64,1.82,19H971.09c76,0,137.58-62.32,137.58-139.2h0c15.42-30,24.33-65.28,24.33-103.06C1133,527.69,1105,468.49,1062.19,432.89Z", fill: "#0891b2", opacity: "0.1", transform: "translate(-67 -63.02)"
      tag "circle", cx: "623", cy: "179", fill: "#0891b2", r: "87"
      tag "polygon", fill: "#fff", points: "594.99 182.28 622.86 154.41 651.01 182.28 631.88 182.28 631.88 203.59 614.12 203.59 614.12 182.42 594.99 182.28"
      tag "path", d: "M804.52,464.22a29.75,29.75,0,0,0-55.63-8,23.81,23.81,0,0,0,2.58,47.48h51.66A19.93,19.93,0,0,0,823,483.88,19.62,19.62,0,0,0,804.52,464.22Zm-22.85,11.72V491H769v-15.1H755.45l19.87-19.87,19.86,19.87Z", fill: "#fff", transform: "translate(-67 -63.02)"
      tag "path", d: "M956.52,711.22a29.75,29.75,0,0,0-55.63-8,23.81,23.81,0,0,0,2.58,47.48h51.66A19.93,19.93,0,0,0,975,730.88,19.62,19.62,0,0,0,956.52,711.22Zm-22.85,11.72V738H921v-15.1H907.45l19.87-19.87,19.86,19.87Z", fill: "#fff", transform: "translate(-67 -63.02)"
      tag "path", d: "M396.45,533a46,46,0,0,0-86-12.28,36.8,36.8,0,0,0,4,73.38H394.3A30.8,30.8,0,0,0,425,563.38,30.33,30.33,0,0,0,396.45,533ZM361.14,551.1v23.34H341.49V551.1H320.61l30.71-30.7L382,551.1Z", fill: "#fff", transform: "translate(-67 -63.02)"
      tag "path", d: "M740,613v-24.3l11.2,11.2L754,597l-16-16-16,16,2.8,2.8,11.2-11.1V613Z", fill: "#fff", transform: "translate(-67 -63.02)"
      tag "path", d: "M181,646v-24.3l11.2,11.2L195,630l-16-16-16,16,2.8,2.8,11.2-11.1V646Z", fill: "#fff", transform: "translate(-67 -63.02)"
      tag "path", d: "M739,384V365.79l8.4,8.4,2.1-2.17-12-12-12,12,2.1,2.1,8.4-8.33V384Z", fill: "#fff", transform: "translate(-67 -63.02)"
      tag "path", d: "M520,252V233.79l8.4,8.4,2.1-2.17-12-12-12,12,2.1,2.1,8.4-8.33V252Z", fill: "#fff", transform: "translate(-67 -63.02)"
      tag "path", d: "M438,432V413.79l8.4,8.4,2.1-2.17-12-12-12,12,2.1,2.1,8.4-8.33V432Z", fill: "#fff", transform: "translate(-67 -63.02)"
      tag "path", d: "M952,516V497.79l8.4,8.4,2.1-2.17-12-12-12,12,2.1,2.1,8.4-8.33V516Z", fill: "#fff", transform: "translate(-67 -63.02)"
      tag "path", d: "M420,677V658.79l8.4,8.4,2.1-2.17-12-12-12,12,2.1,2.1,8.4-8.33V677Z", fill: "#fff", transform: "translate(-67 -63.02)"
      tag "circle", cx: "789", cy: "293", fill: "#fff", r: "6"
      tag "circle", cx: "224", cy: "277", fill: "#fff", r: "6"
      tag "circle", cx: "401", cy: "429", fill: "#fff", r: "6"
      tag "circle", cx: "925", cy: "531", fill: "#fff", r: "3"
      tag "circle", cx: "700", cy: "614", fill: "#fff", r: "3"
      tag "circle", cx: "315", cy: "684", fill: "#fff", r: "3"
      tag "circle", cx: "96", cy: "441", fill: "#fff", r: "3"
      tag "circle", cx: "125", cy: "377", fill: "#fff", r: "3"
      tag "circle", cx: "770", cy: "713", fill: "#fff", r: "3"
      tag "circle", cx: "215", cy: "609", fill: "#fff", r: "3"
      tag "circle", cx: "284", cy: "334", fill: "#fff", r: "3"
      tag "polygon", fill: "#fff", points: "386.5 227.5 371 227.5 371 212 369 212 369 227.5 353.5 227.5 353.5 229.5 369 229.5 369 245 371 245 371 229.5 386.5 229.5 386.5 227.5"
      tag "polygon", fill: "#fff", points: "764 513.89 754.61 513.89 754.61 504.5 753.39 504.5 753.39 513.89 744 513.89 744 515.11 753.39 515.11 753.39 524.5 754.61 524.5 754.61 515.11 764 515.11 764 513.89"
      tag "polygon", fill: "#fff", points: "707 688.89 697.61 688.89 697.61 679.5 696.39 679.5 696.39 688.89 687 688.89 687 690.11 696.39 690.11 696.39 699.5 697.61 699.5 697.61 690.11 707 690.11 707 688.89"
      tag "polygon", fill: "#fff", points: "240 666.89 230.61 666.89 230.61 657.5 229.39 657.5 229.39 666.89 220 666.89 220 668.11 229.39 668.11 229.39 677.5 230.61 677.5 230.61 668.11 240 668.11 240 666.89"
      tag "polygon", fill: "#fff", points: "174 490.89 164.61 490.89 164.61 481.5 163.39 481.5 163.39 490.89 154 490.89 154 492.11 163.39 492.11 163.39 501.5 164.61 501.5 164.61 492.11 174 492.11 174 490.89"
      tag "polygon", fill: "#3f3d56", points: "453.46 669.68 453.53 664.05 450.15 664.01 450.08 669.64 444.25 686.48 458.89 686.65 453.46 669.68"
      tag "polygon", fill: "#3f3d56", points: "468.15 670 468.22 664.23 464.75 664.18 464.68 669.96 458.7 687.23 473.72 687.4 468.15 670"
      tag "polygon", fill: "#3f3d56", points: "482.75 670.03 482.82 664.4 479.44 664.36 479.37 669.99 473.54 686.83 488.19 687 482.75 670.03"
      tag "polygon", fill: "#3f3d56", points: "587.17 671.42 587.24 665.64 583.77 665.6 583.7 671.38 577.72 688.64 592.74 688.82 587.17 671.42"
      tag "polygon", fill: "#3f3d56", points: "602.19 671.6 602.26 665.82 598.79 665.78 598.72 671.56 592.74 688.82 607.76 689 602.19 671.6"
      tag "polygon", fill: "#3f3d56", points: "617.21 671.78 617.28 666 613.81 665.96 613.74 671.74 607.76 689 622.78 689.18 617.21 671.78"
      tag "polygon", fill: "#3f3d56", points: "518.99 670.61 519.06 664.83 515.59 664.79 515.52 670.57 509.54 687.83 524.56 688.01 518.99 670.61"
      tag "polygon", fill: "#3f3d56", points: "534.01 670.79 534.08 665.01 530.62 664.97 530.55 670.75 524.56 688.01 539.58 688.19 534.01 670.79"
      tag "polygon", fill: "#3f3d56", points: "549.03 670.97 549.1 665.19 545.64 665.15 545.57 670.93 539.58 688.19 554.61 688.37 549.03 670.97"
      tag "path", d: "M575.76,329.6c-.21-19.9-23.65-55.18-36.3-55.33S503.68,308.84,503,328.73h-.6l-4.77,399.81,73.38.87,4.77-399.8Z", fill: "#3f3d56", transform: "translate(-67 -63.02)"
      tag "path", d: "M709.8,331.2c-.21-19.9-23.65-55.18-36.3-55.33s-35.78,34.57-36.45,54.46h-.6l-4.77,399.81,73.38.87,4.77-399.8Z", fill: "#3f3d56", transform: "translate(-67 -63.02)"
      tag "path", d: "M643.86,143.94c-.11-29.17-23.36-80.77-36-80.92s-36,50.89-36.77,80h-.59l-7,586.24,73.37.88,7-586.25Z", fill: "#2f2e41", transform: "translate(-67 -63.02)"
      tag "polygon", fill: "#0891b2", points: "509.13 395.43 537.01 367.55 565.15 395.43 546.03 395.43 546.03 416.74 528.26 416.74 528.26 395.56 509.13 395.43"
      tag "g", opacity: "0.1" do
        tag "path", d: "M641.87,337.94c7.59-17.71,22.41-36.18,31.63-36.07,12,.14,33.62,31.79,36.07,52l.26-21.71h0c-.21-19.9-23.65-55.18-36.3-55.33-9.1-.11-23.64,17.88-31.32,35.38Z", transform: "translate(-67 -63.02)"
        tag "path", d: "M502.41,354.72h.6c.67-19.89,23.81-54.61,36.45-54.46,8.26.1,21.11,15.17,29.1,31.16l1.94-162.36h.59c.78-29.16,24.13-80.2,36.77-80,11.94.14,33.36,46.21,35.78,75.9l.23-20h0c-.11-29.17-23.36-80.77-36-80.92s-36,50.89-36.77,80.05h-.59l-1.94,162.36c-8-16-20.84-31.06-29.1-31.16-12.64-.15-35.78,34.57-36.45,54.46h-.6l-4.77,399.81h.3Z", transform: "translate(-67 -63.02)"
      end
      tag "rect", fill: "#ececf3", height: "30.05", rx: "6.93", transform: "translate(-65.72 -70.26) rotate(0.68)", width: "13.87", x: "600.73", y: "88.44"
    end
  end
end
