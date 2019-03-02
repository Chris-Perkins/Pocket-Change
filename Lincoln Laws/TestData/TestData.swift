//
//  TestData.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import Foundation

func getTestData() -> Data {
    return Data(base64Encoded: """
        {
              \"congress\":116,
              \"chamber\":\"House\",
              \"num_results\":20,
              \"offset\":0,
              \"bills\":[
                    {
                          \"bill_id\":\"hr1475-116\",
                          \"bill_slug\":\"hr1475\",
                          \"bill_type\":\"hr\",
                          \"number\":\"H.R.1475\",
                          \"bill_uri\":\"https://api.propublica.org/congress/v1/116/bills/hr1475.json\",
                          \"title\":\"To create a publicly available lottery system for permits for the use of motorized or nonmotorized boats in the Boundary Waters Canoe Area Wilderness, and for other purposes.\",
                          \"short_title\":\"To create a publicly available lottery system for permits for the use of motorized or nonmotorized boats in the Boundary Waters Canoe Area Wilderness, and for other purposes.\",
                          \"sponsor_title\":\"Rep.\",
                          \"sponsor_id\":\"S001212\",
                          \"sponsor_name\":\"Pete Stauber\",
                          \"sponsor_state\":\"MN\",
                          \"sponsor_party\":\"R\",
                          \"sponsor_uri\":\"https://api.propublica.org/congress/v1/members/S001212.json\",
                          \"gpo_pdf_uri\":null,
                          \"congressdotgov_url\":\"https://www.congress.gov/bill/116th-congress/house-bill/1475\",
                          \"govtrack_url\":\"https://www.govtrack.us/congress/bills/116/hr1475\",
                          \"introduced_date\":\"2019-02-28\",
                          \"active\":false,
                          \"last_vote\":null,
                          \"house_passage\":null,
                          \"senate_passage\":null,
                          \"enacted\":null,
                          \"vetoed\":null,
                          \"cosponsors\":2,
                          \"cosponsors_by_party\":{
                                \"R\":2
                          },
                          \"committees\":\"House Natural Resources Committee\",
                          \"committee_codes\":[
                                \"HSII\"
                          ],
                          \"subcommittee_codes\":[

                          ],
                          \"primary_subject\":\"\",
                          \"summary\":\"\",
                          \"summary_short\":\"\",
                          \"latest_major_action_date\":\"2019-02-28\",
                          \"latest_major_action\":\"Referred to the House Committee on Natural Resources.\"
                    },
                    {
                          \"bill_id\":\"hr1449-116\",
                          \"bill_slug\":\"hr1449\",
                          \"bill_type\":\"hr\",
                          \"number\":\"H.R.1449\",
                          \"bill_uri\":\"https://api.propublica.org/congress/v1/116/bills/hr1449.json\",
                          \"title\":\"To designate the facility of the United States Postal Service located at 3033 203rd Street in Olympia Fields, Illinois, as the \"Captain Robert L. Martin Post Office\".\",
                          \"short_title\":\"To designate the facility of the United States Postal Service located at 3033 203rd Street in Olympia Fields, Illinois, as the \"Captain Robert L. Martin Post Office\".\",
                          \"sponsor_title\":\"Rep.\",
                          \"sponsor_id\":\"K000385\",
                          \"sponsor_name\":\"Robin Kelly\",
                          \"sponsor_state\":\"IL\",
                          \"sponsor_party\":\"D\",
                          \"sponsor_uri\":\"https://api.propublica.org/congress/v1/members/K000385.json\",
                          \"gpo_pdf_uri\":null,
                          \"congressdotgov_url\":\"https://www.congress.gov/bill/116th-congress/house-bill/1449\",
                          \"govtrack_url\":\"https://www.govtrack.us/congress/bills/116/hr1449\",
                          \"introduced_date\":\"2019-02-28\",
                          \"active\":false,
                          \"last_vote\":null,
                          \"house_passage\":null,
                          \"senate_passage\":null,
                          \"enacted\":null,
                          \"vetoed\":null,
                          \"cosponsors\":17,
                          \"cosponsors_by_party\":{
                                \"D\":13,
                                \"R\":4
                          },
                          \"committees\":\"House Oversight and Reform Committee\",
                          \"committee_codes\":[
                                \"HSGO\"
                          ],
                          \"subcommittee_codes\":[

                          ],
                          \"primary_subject\":\"Government Operations and Politics\",
                          \"summary\":\"Designates the facility of the United States Postal Service located at 3033 203rd Street in Olympia Fields, Illinois, as the \"Captain Robert L. Martin Post Office.\"\",
                          \"summary_short\":\"Designates the facility of the United States Postal Service located at 3033 203rd Street in Olympia Fields, Illinois, as the \"Captain Robert L. Martin Post Office.\"\",
                          \"latest_major_action_date\":\"2019-02-28\",
                          \"latest_major_action\":\"Referred to the House Committee on Oversight and Reform.\"
                    },
                    {
                          \"bill_id\":\"hres163-116\",
                          \"bill_slug\":\"hres163\",
                          \"bill_type\":\"hres\",
                          \"number\":\"H.RES.163\",
                          \"bill_uri\":\"https://api.propublica.org/congress/v1/116/bills/hres163.json\",
                          \"title\":\"Urging action to increase equity within the legal cannabis marketplace.\",
                          \"short_title\":\"RESPECT Resolution\",
                          \"sponsor_title\":\"Rep.\",
                          \"sponsor_id\":\"L000551\",
                          \"sponsor_name\":\"Barbara Lee\",
                          \"sponsor_state\":\"CA\",
                          \"sponsor_party\":\"D\",
                          \"sponsor_uri\":\"https://api.propublica.org/congress/v1/members/L000551.json\",
                          \"gpo_pdf_uri\":\"https://www.govinfo.gov/content/pkg/BILLS-116hres163ih/pdf/BILLS-116hres163ih.pdf\",
                          \"congressdotgov_url\":\"https://www.congress.gov/bill/116th-congress/house-resolution/163\",
                          \"govtrack_url\":\"https://www.govtrack.us/congress/bills/116/hres163\",
                          \"introduced_date\":\"2019-02-28\",
                          \"active\":false,
                          \"last_vote\":null,
                          \"house_passage\":null,
                          \"senate_passage\":null,
                          \"enacted\":null,
                          \"vetoed\":null,
                          \"cosponsors\":5,
                          \"cosponsors_by_party\":{
                                \"D\":5
                          },
                          \"committees\":\"House Education and Labor\",
                          \"committee_codes\":[
                                \"HSIF\"
                          ],
                          \"subcommittee_codes\":[

                          ],
                          \"primary_subject\":\"\",
                          \"summary\":\"\",
                          \"summary_short\":\"\",
                          \"latest_major_action_date\":\"2019-02-28\",
                          \"latest_major_action\":\"Referred to the Committee on Energy and Commerce, and in addition to the Committees on the Judiciary, and Education and Labor, for a period to be subsequently determined by the Speaker, in each case for consideration of such provisions as fall within the jurisdiction of the committee concerned.\"
                    },
                    {
                          \"bill_id\":\"hr1468-116\",
                          \"bill_slug\":\"hr1468\",
                          \"bill_type\":\"hr\",
                          \"number\":\"H.R.1468\",
                          \"bill_uri\":\"https://api.propublica.org/congress/v1/116/bills/hr1468.json\",
                          \"title\":\"To promote the economic security and safety of survivors of domestic violence, dating violence, sexual assault, or stalking, and for other purposes.\",
                          \"short_title\":\"To promote the economic security and safety of survivors of domestic violence, dating violence, sexual assault, or stalking, and for other purposes.\",
                          \"sponsor_title\":\"Rep.\",
                          \"sponsor_id\":\"R000486\",
                          \"sponsor_name\":\"Lucille Roybal-Allard\",
                          \"sponsor_state\":\"CA\",
                          \"sponsor_party\":\"D\",
                          \"sponsor_uri\":\"https://api.propublica.org/congress/v1/members/R000486.json\",
                          \"gpo_pdf_uri\":null,
                          \"congressdotgov_url\":\"https://www.congress.gov/bill/116th-congress/house-bill/1468\",
                          \"govtrack_url\":\"https://www.govtrack.us/congress/bills/116/hr1468\",
                          \"introduced_date\":\"2019-02-28\",
                          \"active\":false,
                          \"last_vote\":null,
                          \"house_passage\":null,
                          \"senate_passage\":null,
                          \"enacted\":null,
                          \"vetoed\":null,
                          \"cosponsors\":55,
                          \"cosponsors_by_party\":{
                                \"D\":55
                          },
                          \"committees\":\"House Judiciary Committee\",
                          \"committee_codes\":[
                                \"HSED\"
                          ],
                          \"subcommittee_codes\":[

                          ],
                          \"primary_subject\":\"\",
                          \"summary\":\"\",
                          \"summary_short\":\"\",
                          \"latest_major_action_date\":\"2019-02-28\",
                          \"latest_major_action\":\"Referred to the Committee on Education and Labor, and in addition to the Committees on Financial Services, Ways and Means, and the Judiciary, for a period to be subsequently determined by the Speaker, in each case for consideration of such provisions as fall within the jurisdiction of the committee concerned.\"
                    },
                    {
                          \"bill_id\":\"hr1480-116\",
                          \"bill_slug\":\"hr1480\",
                          \"bill_type\":\"hr\",
                          \"number\":\"H.R.1480\",
                          \"bill_uri\":\"https://api.propublica.org/congress/v1/116/bills/hr1480.json\",
                          \"title\":\"To amend the Energy Policy and Conservation Act to establish the CHP Technical Assistance Partnership Program, and for other purposes.\",
                          \"short_title\":\"To amend the Energy Policy and Conservation Act to establish the CHP Technical Assistance Partnership Program, and for other purposes.\",
                          \"sponsor_title\":\"Rep.\",
                          \"sponsor_id\":\"W000800\",
                          \"sponsor_name\":\"Peter Welch\",
                          \"sponsor_state\":\"VT\",
                          \"sponsor_party\":\"D\",
                          \"sponsor_uri\":\"https://api.propublica.org/congress/v1/members/W000800.json\",
                          \"gpo_pdf_uri\":null,
                          \"congressdotgov_url\":\"https://www.congress.gov/bill/116th-congress/house-bill/1480\",
                          \"govtrack_url\":\"https://www.govtrack.us/congress/bills/116/hr1480\",
                          \"introduced_date\":\"2019-02-28\",
                          \"active\":false,
                          \"last_vote\":null,
                          \"house_passage\":null,
                          \"senate_passage\":null,
                          \"enacted\":null,
                          \"vetoed\":null,
                          \"cosponsors\":3,
                          \"cosponsors_by_party\":{
                                \"R\":2,
                                \"D\":1
                          },
                          \"committees\":\"House Science, Space, and Technology Committee\",
                          \"committee_codes\":[
                                \"HSIF\"
                          ],
                          \"subcommittee_codes\":[

                          ],
                          \"primary_subject\":\"\",
                          \"summary\":\"\",
                          \"summary_short\":\"\",
                          \"latest_major_action_date\":\"2019-02-28\",
                          \"latest_major_action\":\"Referred to the Committee on Energy and Commerce, and in addition to the Committee on Science, Space, and Technology, for a period to be subsequently determined by the Speaker, in each case for consideration of such provisions as fall within the jurisdiction of the committee concerned.\"
                    },
                    {
                          \"bill_id\":\"hr1479-116\",
                          \"bill_slug\":\"hr1479\",
                          \"bill_type\":\"hr\",
                          \"number\":\"H.R.1479\",
                          \"bill_uri\":\"https://api.propublica.org/congress/v1/116/bills/hr1479.json\",
                          \"title\":\"To amend the Internal Revenue Code of 1986 to include biomass heating appliances for tax credits available for energy-efficient building property and energy property.\",
                          \"short_title\":\"To amend the Internal Revenue Code of 1986 to include biomass heating appliances for tax credits available for energy-efficient building property and energy property.\",
                          \"sponsor_title\":\"Rep.\",
                          \"sponsor_id\":\"W000800\",
                          \"sponsor_name\":\"Peter Welch\",
                          \"sponsor_state\":\"VT\",
                          \"sponsor_party\":\"D\",
                          \"sponsor_uri\":\"https://api.propublica.org/congress/v1/members/W000800.json\",
                          \"gpo_pdf_uri\":null,
                          \"congressdotgov_url\":\"https://www.congress.gov/bill/116th-congress/house-bill/1479\",
                          \"govtrack_url\":\"https://www.govtrack.us/congress/bills/116/hr1479\",
                          \"introduced_date\":\"2019-02-28\",
                          \"active\":false,
                          \"last_vote\":null,
                          \"house_passage\":null,
                          \"senate_passage\":null,
                          \"enacted\":null,
                          \"vetoed\":null,
                          \"cosponsors\":3,
                          \"cosponsors_by_party\":{
                                \"R\":1,
                                \"D\":2
                          },
                          \"committees\":\"House Ways and Means Committee\",
                          \"committee_codes\":[
                                \"HSWM\"
                          ],
                          \"subcommittee_codes\":[

                          ],
                          \"primary_subject\":\"\",
                          \"summary\":\"\",
                          \"summary_short\":\"\",
                          \"latest_major_action_date\":\"2019-02-28\",
                          \"latest_major_action\":\"Referred to the House Committee on Ways and Means.\"
                    },
                    {
                          \"bill_id\":\"hr1477-116\",
                          \"bill_slug\":\"hr1477\",
                          \"bill_type\":\"hr\",
                          \"number\":\"H.R.1477\",
                          \"bill_uri\":\"https://api.propublica.org/congress/v1/116/bills/hr1477.json\",
                          \"title\":\"To require a threat assessment and strategy to counter Russian influence in Venezuela, an assessment of foreign acquisition of CITGO assets in the United States, and for other purposes.\",
                          \"short_title\":\"To require a threat assessment and strategy to counter Russian influence in Venezuela, an assessment of foreign acquisition of CITGO assets in the United States, and for other purposes.\",
                          \"sponsor_title\":\"Rep.\",
                          \"sponsor_id\":\"W000797\",
                          \"sponsor_name\":\"Debbie Wasserman Schultz\",
                          \"sponsor_state\":\"FL\",
                          \"sponsor_party\":\"D\",
                          \"sponsor_uri\":\"https://api.propublica.org/congress/v1/members/W000797.json\",
                          \"gpo_pdf_uri\":null,
                          \"congressdotgov_url\":\"https://www.congress.gov/bill/116th-congress/house-bill/1477\",
                          \"govtrack_url\":\"https://www.govtrack.us/congress/bills/116/hr1477\",
                          \"introduced_date\":\"2019-02-28\",
                          \"active\":false,
                          \"last_vote\":null,
                          \"house_passage\":null,
                          \"senate_passage\":null,
                          \"enacted\":null,
                          \"vetoed\":null,
                          \"cosponsors\":4,
                          \"cosponsors_by_party\":{
                                \"R\":1,
                                \"D\":3
                          },
                          \"committees\":\"House Judiciary Committee\",
                          \"committee_codes\":[
                                \"HSFA\"
                          ],
                          \"subcommittee_codes\":[

                          ],
                          \"primary_subject\":\"\",
                          \"summary\":\"\",
                          \"summary_short\":\"\",
                          \"latest_major_action_date\":\"2019-02-28\",
                          \"latest_major_action\":\"Referred to the Committee on Foreign Affairs, and in addition to the Committee on the Judiciary, for a period to be subsequently determined by the Speaker, in each case for consideration of such provisions as fall within the jurisdiction of the committee concerned.\"
                    },
                    {
                          \"bill_id\":\"hr1478-116\",
                          \"bill_slug\":\"hr1478\",
                          \"bill_type\":\"hr\",
                          \"number\":\"H.R.1478\",
                          \"bill_uri\":\"https://api.propublica.org/congress/v1/116/bills/hr1478.json\",
                          \"title\":\"To amend the Federal Food, Drug, and Cosmetic Act to allow for the importation of affordable and safe insulin by wholesale distributors, pharmacies, and individuals.\",
                          \"short_title\":\"To amend the Federal Food, Drug, and Cosmetic Act to allow for the importation of affordable and safe insulin by wholesale distributors, pharmacies, and individuals.\",
                          \"sponsor_title\":\"Rep.\",
                          \"sponsor_id\":\"W000800\",
                          \"sponsor_name\":\"Peter Welch\",
                          \"sponsor_state\":\"VT\",
                          \"sponsor_party\":\"D\",
                          \"sponsor_uri\":\"https://api.propublica.org/congress/v1/members/W000800.json\",
                          \"gpo_pdf_uri\":null,
                          \"congressdotgov_url\":\"https://www.congress.gov/bill/116th-congress/house-bill/1478\",
                          \"govtrack_url\":\"https://www.govtrack.us/congress/bills/116/hr1478\",
                          \"introduced_date\":\"2019-02-28\",
                          \"active\":false,
                          \"last_vote\":null,
                          \"house_passage\":null,
                          \"senate_passage\":null,
                          \"enacted\":null,
                          \"vetoed\":null,
                          \"cosponsors\":1,
                          \"cosponsors_by_party\":{
                                \"R\":1
                          },
                          \"committees\":\"House Energy and Commerce Committee\",
                          \"committee_codes\":[
                                \"HSIF\"
                          ],
                          \"subcommittee_codes\":[

                          ],
                          \"primary_subject\":\"\",
                          \"summary\":\"\",
                          \"summary_short\":\"\",
                          \"latest_major_action_date\":\"2019-02-28\",
                          \"latest_major_action\":\"Referred to the House Committee on Energy and Commerce.\"
                    },
                    {
                          \"bill_id\":\"hr1476-116\",
                          \"bill_slug\":\"hr1476\",
                          \"bill_type\":\"hr\",
                          \"number\":\"H.R.1476\",
                          \"bill_uri\":\"https://api.propublica.org/congress/v1/116/bills/hr1476.json\",
                          \"title\":\"To provide for the conduct of demonstration projects to provide coordinated case management services for TANF recipients.\",
                          \"short_title\":\"To provide for the conduct of demonstration projects to provide coordinated case management services for TANF recipients.\",
                          \"sponsor_title\":\"Rep.\",
                          \"sponsor_id\":\"W000813\",
                          \"sponsor_name\":\"Jackie Walorski\",
                          \"sponsor_state\":\"IN\",
                          \"sponsor_party\":\"R\",
                          \"sponsor_uri\":\"https://api.propublica.org/congress/v1/members/W000813.json\",
                          \"gpo_pdf_uri\":null,
                          \"congressdotgov_url\":\"https://www.congress.gov/bill/116th-congress/house-bill/1476\",
                          \"govtrack_url\":\"https://www.govtrack.us/congress/bills/116/hr1476\",
                          \"introduced_date\":\"2019-02-28\",
                          \"active\":false,
                          \"last_vote\":null,
                          \"house_passage\":null,
                          \"senate_passage\":null,
                          \"enacted\":null,
                          \"vetoed\":null,
                          \"cosponsors\":2,
                          \"cosponsors_by_party\":{
                                \"R\":2
                          },
                          \"committees\":\"House Ways and Means Committee\",
                          \"committee_codes\":[
                                \"HSWM\"
                          ],
                          \"subcommittee_codes\":[

                          ],
                          \"primary_subject\":\"\",
                          \"summary\":\"\",
                          \"summary_short\":\"\",
                          \"latest_major_action_date\":\"2019-02-28\",
                          \"latest_major_action\":\"Referred to the House Committee on Ways and Means.\"
                    },
                    {
                          \"bill_id\":\"hr1474-116\",
                          \"bill_slug\":\"hr1474\",
                          \"bill_type\":\"hr\",
                          \"number\":\"H.R.1474\",
                          \"bill_uri\":\"https://api.propublica.org/congress/v1/116/bills/hr1474.json\",
                          \"title\":\"To require the Director of National Intelligence to submit a pre-election threat assessment prior to each regularly scheduled general election for Federal office, and for other purposes.\",
                          \"short_title\":\"To require the Director of National Intelligence to submit a pre-election threat assessment prior to each regularly scheduled general election for Federal office, and for other purposes.\",
                          \"sponsor_title\":\"Rep.\",
                          \"sponsor_id\":\"S001209\",
                          \"sponsor_name\":\"Abigail Spanberger\",
                          \"sponsor_state\":\"VA\",
                          \"sponsor_party\":\"D\",
                          \"sponsor_uri\":\"https://api.propublica.org/congress/v1/members/S001209.json\",
                          \"gpo_pdf_uri\":null,
                          \"congressdotgov_url\":\"https://www.congress.gov/bill/116th-congress/house-bill/1474\",
                          \"govtrack_url\":\"https://www.govtrack.us/congress/bills/116/hr1474\",
                          \"introduced_date\":\"2019-02-28\",
                          \"active\":false,
                          \"last_vote\":null,
                          \"house_passage\":null,
                          \"senate_passage\":null,
                          \"enacted\":null,
                          \"vetoed\":null,
                          \"cosponsors\":0,
                          \"cosponsors_by_party\":{

                          },
                          \"committees\":\"House Intelligence (Permanent Select) Committee\",
                          \"committee_codes\":[
                                \"HLIG\"
                          ],
                          \"subcommittee_codes\":[

                          ],
                          \"primary_subject\":\"\",
                          \"summary\":\"\",
                          \"summary_short\":\"\",
                          \"latest_major_action_date\":\"2019-02-28\",
                          \"latest_major_action\":\"Referred to the House Committee on Intelligence (Permanent Select).\"
                    },
                    {
                          \"bill_id\":\"hr1470-116\",
                          \"bill_slug\":\"hr1470\",
                          \"bill_type\":\"hr\",
                          \"number\":\"H.R.1470\",
                          \"bill_uri\":\"https://api.propublica.org/congress/v1/116/bills/hr1470.json\",
                          \"title\":\"To amend the Food and Nutrition Act of 2008 to provide greater access to the supplemental nutrition assistance program by reducing duplicative and burdensome administrative requirements, authorize the Secretary of Agriculture to award grants to certain community-based nonprofit feeding and anti-hunger groups for the purpose of establishing and implementing a Beyond the Soup Kitchen Pilot Program for certain socially and economically disadvantaged populations, and for other purposes.\",
                          \"short_title\":\"To amend the Food and Nutrition Act of 2008 to provide greater access to the supplemental nutrition assistance program by reducing duplicative and burdensome administrative requirements, authorize the Secretary of Agriculture to award grants to certain co\",
                          \"sponsor_title\":\"Rep.\",
                          \"sponsor_id\":\"S000248\",
                          \"sponsor_name\":\"Jos\u{00e9} E. Serrano\",
                          \"sponsor_state\":\"NY\",
                          \"sponsor_party\":\"D\",
                          \"sponsor_uri\":\"https://api.propublica.org/congress/v1/members/S000248.json\",
                          \"gpo_pdf_uri\":null,
                          \"congressdotgov_url\":\"https://www.congress.gov/bill/116th-congress/house-bill/1470\",
                          \"govtrack_url\":\"https://www.govtrack.us/congress/bills/116/hr1470\",
                          \"introduced_date\":\"2019-02-28\",
                          \"active\":false,
                          \"last_vote\":null,
                          \"house_passage\":null,
                          \"senate_passage\":null,
                          \"enacted\":null,
                          \"vetoed\":null,
                          \"cosponsors\":11,
                          \"cosponsors_by_party\":{
                                \"D\":11
                          },
                          \"committees\":\"House Agriculture Committee\",
                          \"committee_codes\":[
                                \"HSAG\"
                          ],
                          \"subcommittee_codes\":[

                          ],
                          \"primary_subject\":\"\",
                          \"summary\":\"\",
                          \"summary_short\":\"\",
                          \"latest_major_action_date\":\"2019-02-28\",
                          \"latest_major_action\":\"Referred to the House Committee on Agriculture.\"
                    },
                    {
                          \"bill_id\":\"hr1471-116\",
                          \"bill_slug\":\"hr1471\",
                          \"bill_type\":\"hr\",
                          \"number\":\"H.R.1471\",
                          \"bill_uri\":\"https://api.propublica.org/congress/v1/116/bills/hr1471.json\",
                          \"title\":\"To require a joint resolution of approval for the entry into effect of a civilian nuclear cooperation agreement with Saudi Arabia, and for other purposes.\",
                          \"short_title\":\"To require a joint resolution of approval for the entry into effect of a civilian nuclear cooperation agreement with Saudi Arabia, and for other purposes.\",
                          \"sponsor_title\":\"Rep.\",
                          \"sponsor_id\":\"S000344\",
                          \"sponsor_name\":\"Brad Sherman\",
                          \"sponsor_state\":\"CA\",
                          \"sponsor_party\":\"D\",
                          \"sponsor_uri\":\"https://api.propublica.org/congress/v1/members/S000344.json\",
                          \"gpo_pdf_uri\":null,
                          \"congressdotgov_url\":\"https://www.congress.gov/bill/116th-congress/house-bill/1471\",
                          \"govtrack_url\":\"https://www.govtrack.us/congress/bills/116/hr1471\",
                          \"introduced_date\":\"2019-02-28\",
                          \"active\":false,
                          \"last_vote\":null,
                          \"house_passage\":null,
                          \"senate_passage\":null,
                          \"enacted\":null,
                          \"vetoed\":null,
                          \"cosponsors\":1,
                          \"cosponsors_by_party\":{
                                \"R\":1
                          },
                          \"committees\":\"House Foreign Affairs Committee\",
                          \"committee_codes\":[
                                \"HSFA\"
                          ],
                          \"subcommittee_codes\":[

                          ],
                          \"primary_subject\":\"\",
                          \"summary\":\"\",
                          \"summary_short\":\"\",
                          \"latest_major_action_date\":\"2019-02-28\",
                          \"latest_major_action\":\"Referred to the House Committee on Foreign Affairs.\"
                    },
                    {
                          \"bill_id\":\"hr1473-116\",
                          \"bill_slug\":\"hr1473\",
                          \"bill_type\":\"hr\",
                          \"number\":\"H.R.1473\",
                          \"bill_uri\":\"https://api.propublica.org/congress/v1/116/bills/hr1473.json\",
                          \"title\":\"To amend title IV of the Social Security Act to target funds to truly needy families.\",
                          \"short_title\":\"To amend title IV of the Social Security Act to target funds to truly needy families.\",
                          \"sponsor_title\":\"Rep.\",
                          \"sponsor_id\":\"S001172\",
                          \"sponsor_name\":\"Adrian Smith\",
                          \"sponsor_state\":\"NE\",
                          \"sponsor_party\":\"R\",
                          \"sponsor_uri\":\"https://api.propublica.org/congress/v1/members/S001172.json\",
                          \"gpo_pdf_uri\":null,
                          \"congressdotgov_url\":\"https://www.congress.gov/bill/116th-congress/house-bill/1473\",
                          \"govtrack_url\":\"https://www.govtrack.us/congress/bills/116/hr1473\",
                          \"introduced_date\":\"2019-02-28\",
                          \"active\":false,
                          \"last_vote\":null,
                          \"house_passage\":null,
                          \"senate_passage\":null,
                          \"enacted\":null,
                          \"vetoed\":null,
                          \"cosponsors\":0,
                          \"cosponsors_by_party\":{

                          },
                          \"committees\":\"House Ways and Means Committee\",
                          \"committee_codes\":[
                                \"HSWM\"
                          ],
                          \"subcommittee_codes\":[

                          ],
                          \"primary_subject\":\"\",
                          \"summary\":\"\",
                          \"summary_short\":\"\",
                          \"latest_major_action_date\":\"2019-02-28\",
                          \"latest_major_action\":\"Referred to the House Committee on Ways and Means.\"
                    },
                    {
                          \"bill_id\":\"hr1472-116\",
                          \"bill_slug\":\"hr1472\",
                          \"bill_type\":\"hr\",
                          \"number\":\"H.R.1472\",
                          \"bill_uri\":\"https://api.propublica.org/congress/v1/116/bills/hr1472.json\",
                          \"title\":\"To rename the Homestead National Monument of America near Beatrice, Nebraska, as the Homestead National Historical Park.\",
                          \"short_title\":\"To rename the Homestead National Monument of America near Beatrice, Nebraska, as the Homestead National Historical Park.\",
                          \"sponsor_title\":\"Rep.\",
                          \"sponsor_id\":\"S001172\",
                          \"sponsor_name\":\"Adrian Smith\",
                          \"sponsor_state\":\"NE\",
                          \"sponsor_party\":\"R\",
                          \"sponsor_uri\":\"https://api.propublica.org/congress/v1/members/S001172.json\",
                          \"gpo_pdf_uri\":null,
                          \"congressdotgov_url\":\"https://www.congress.gov/bill/116th-congress/house-bill/1472\",
                          \"govtrack_url\":\"https://www.govtrack.us/congress/bills/116/hr1472\",
                          \"introduced_date\":\"2019-02-28\",
                          \"active\":false,
                          \"last_vote\":null,
                          \"house_passage\":null,
                          \"senate_passage\":null,
                          \"enacted\":null,
                          \"vetoed\":null,
                          \"cosponsors\":0,
                          \"cosponsors_by_party\":{

                          },
                          \"committees\":\"House Natural Resources Committee\",
                          \"committee_codes\":[
                                \"HSII\"
                          ],
                          \"subcommittee_codes\":[

                          ],
                          \"primary_subject\":\"\",
                          \"summary\":\"\",
                          \"summary_short\":\"\",
                          \"latest_major_action_date\":\"2019-02-28\",
                          \"latest_major_action\":\"Referred to the House Committee on Natural Resources.\"
                    },
                    {
                          \"bill_id\":\"hr1469-116\",
                          \"bill_slug\":\"hr1469\",
                          \"bill_type\":\"hr\",
                          \"number\":\"H.R.1469\",
                          \"bill_uri\":\"https://api.propublica.org/congress/v1/116/bills/hr1469.json\",
                          \"title\":\"To amend title IV-A of the Social Security Act, and for other purposes.\",
                          \"short_title\":\"To amend title IV-A of the Social Security Act, and for other purposes.\",
                          \"sponsor_title\":\"Rep.\",
                          \"sponsor_id\":\"S001183\",
                          \"sponsor_name\":\"David Schweikert\",
                          \"sponsor_state\":\"AZ\",
                          \"sponsor_party\":\"R\",
                          \"sponsor_uri\":\"https://api.propublica.org/congress/v1/members/S001183.json\",
                          \"gpo_pdf_uri\":null,
                          \"congressdotgov_url\":\"https://www.congress.gov/bill/116th-congress/house-bill/1469\",
                          \"govtrack_url\":\"https://www.govtrack.us/congress/bills/116/hr1469\",
                          \"introduced_date\":\"2019-02-28\",
                          \"active\":false,
                          \"last_vote\":null,
                          \"house_passage\":null,
                          \"senate_passage\":null,
                          \"enacted\":null,
                          \"vetoed\":null,
                          \"cosponsors\":2,
                          \"cosponsors_by_party\":{
                                \"R\":2
                          },
                          \"committees\":\"House Ways and Means Committee\",
                          \"committee_codes\":[
                                \"HSWM\"
                          ],
                          \"subcommittee_codes\":[

                          ],
                          \"primary_subject\":\"\",
                          \"summary\":\"\",
                          \"summary_short\":\"\",
                          \"latest_major_action_date\":\"2019-02-28\",
                          \"latest_major_action\":\"Referred to the House Committee on Ways and Means.\"
                    },
                    {
                          \"bill_id\":\"hr1466-116\",
                          \"bill_slug\":\"hr1466\",
                          \"bill_type\":\"hr\",
                          \"number\":\"H.R.1466\",
                          \"bill_uri\":\"https://api.propublica.org/congress/v1/116/bills/hr1466.json\",
                          \"title\":\"To provide that the salaries of Members of a House of Congress will be held in escrow if that House has not agreed to a concurrent resolution on the budget for fiscal year 2020 by April 15, 2019, to eliminate automatic pay adjustments for Members of Congress, to prohibit the use of funds provided for the official travel expenses of Members of Congress and other officers and employees of the legislative branch for first-class airline accommodations, and to amend title 18, United States Code, to establish a uniform 5-year post-employment ban on lobbying by former Members of Congress.\",
                          \"short_title\":\"To provide that the salaries of Members of a House of Congress will be held in escrow if that House has not agreed to a concurrent resolution on the budget for fiscal year 2020 by April 15, 2019, to eliminate automatic pay adjustments for Members of Congr\",
                          \"sponsor_title\":\"Rep.\",
                          \"sponsor_id\":\"O000171\",
                          \"sponsor_name\":\"Tom O'Halleran\",
                          \"sponsor_state\":\"AZ\",
                          \"sponsor_party\":\"D\",
                          \"sponsor_uri\":\"https://api.propublica.org/congress/v1/members/O000171.json\",
                          \"gpo_pdf_uri\":null,
                          \"congressdotgov_url\":\"https://www.congress.gov/bill/116th-congress/house-bill/1466\",
                          \"govtrack_url\":\"https://www.govtrack.us/congress/bills/116/hr1466\",
                          \"introduced_date\":\"2019-02-28\",
                          \"active\":false,
                          \"last_vote\":null,
                          \"house_passage\":null,
                          \"senate_passage\":null,
                          \"enacted\":null,
                          \"vetoed\":null,
                          \"cosponsors\":0,
                          \"cosponsors_by_party\":{

                          },
                          \"committees\":\"House Oversight and Reform Committee\",
                          \"committee_codes\":[
                                \"HSHA\"
                          ],
                          \"subcommittee_codes\":[

                          ],
                          \"primary_subject\":\"\",
                          \"summary\":\"\",
                          \"summary_short\":\"\",
                          \"latest_major_action_date\":\"2019-02-28\",
                          \"latest_major_action\":\"Referred to the Committee on House Administration, and in addition to the Committees on the Judiciary, and Oversight and Reform, for a period to be subsequently determined by the Speaker, in each case for consideration of such provisions as fall within the jurisdiction of the committee concerned.\"
                    },
                    {
                          \"bill_id\":\"hr1456-116\",
                          \"bill_slug\":\"hr1456\",
                          \"bill_type\":\"hr\",
                          \"number\":\"H.R.1456\",
                          \"bill_uri\":\"https://api.propublica.org/congress/v1/116/bills/hr1456.json\",
                          \"title\":\"To amend the Controlled Substances Act to provide for a new rule regarding the application of the Act to marihuana, and for other purposes.\",
                          \"short_title\":\"To amend the Controlled Substances Act to provide for a new rule regarding the application of the Act to marihuana, and for other purposes.\",
                          \"sponsor_title\":\"Rep.\",
                          \"sponsor_id\":\"L000551\",
                          \"sponsor_name\":\"Barbara Lee\",
                          \"sponsor_state\":\"CA\",
                          \"sponsor_party\":\"D\",
                          \"sponsor_uri\":\"https://api.propublica.org/congress/v1/members/L000551.json\",
                          \"gpo_pdf_uri\":null,
                          \"congressdotgov_url\":\"https://www.congress.gov/bill/116th-congress/house-bill/1456\",
                          \"govtrack_url\":\"https://www.govtrack.us/congress/bills/116/hr1456\",
                          \"introduced_date\":\"2019-02-28\",
                          \"active\":false,
                          \"last_vote\":null,
                          \"house_passage\":null,
                          \"senate_passage\":null,
                          \"enacted\":null,
                          \"vetoed\":null,
                          \"cosponsors\":30,
                          \"cosponsors_by_party\":{
                                \"D\":30
                          },
                          \"committees\":\"House Financial Services Committee\",
                          \"committee_codes\":[
                                \"HSJU\"
                          ],
                          \"subcommittee_codes\":[

                          ],
                          \"primary_subject\":\"\",
                          \"summary\":\"\",
                          \"summary_short\":\"\",
                          \"latest_major_action_date\":\"2019-02-28\",
                          \"latest_major_action\":\"Referred to the Committee on the Judiciary, and in addition to the Committees on Energy and Commerce, Agriculture, Natural Resources, and Financial Services, for a period to be subsequently determined by the Speaker, in each case for consideration of such provisions as fall within the jurisdiction of the committee concerned.\"
                    },
                    {
                          \"bill_id\":\"hr1467-116\",
                          \"bill_slug\":\"hr1467\",
                          \"bill_type\":\"hr\",
                          \"number\":\"H.R.1467\",
                          \"bill_uri\":\"https://api.propublica.org/congress/v1/116/bills/hr1467.json\",
                          \"title\":\"To amend the Foreign Agents Registration Act of 1938 to establish a separate unit within the Department of Justice for the investigation and enforcement of such Act, to provide the Attorney General with the authority to impose civil money penalties for violations of such Act, and to require agents of foreign principals who are registered under such Act to disclose transactions involving things of financial value conferred on officeholders.\",
                          \"short_title\":\"To amend the Foreign Agents Registration Act of 1938 to establish a separate unit within the Department of Justice for the investigation and enforcement of such Act, to provide the Attorney General with the authority to impose civil money penalties for vi\",
                          \"sponsor_title\":\"Rep.\",
                          \"sponsor_id\":\"O000173\",
                          \"sponsor_name\":\"Ilhan Omar\",
                          \"sponsor_state\":\"MN\",
                          \"sponsor_party\":\"D\",
                          \"sponsor_uri\":\"https://api.propublica.org/congress/v1/members/O000173.json\",
                          \"gpo_pdf_uri\":null,
                          \"congressdotgov_url\":\"https://www.congress.gov/bill/116th-congress/house-bill/1467\",
                          \"govtrack_url\":\"https://www.govtrack.us/congress/bills/116/hr1467\",
                          \"introduced_date\":\"2019-02-28\",
                          \"active\":false,
                          \"last_vote\":null,
                          \"house_passage\":null,
                          \"senate_passage\":null,
                          \"enacted\":null,
                          \"vetoed\":null,
                          \"cosponsors\":1,
                          \"cosponsors_by_party\":{
                                \"D\":1
                          },
                          \"committees\":\"House Judiciary Committee\",
                          \"committee_codes\":[
                                \"HSJU\"
                          ],
                          \"subcommittee_codes\":[

                          ],
                          \"primary_subject\":\"\",
                          \"summary\":\"\",
                          \"summary_short\":\"\",
                          \"latest_major_action_date\":\"2019-02-28\",
                          \"latest_major_action\":\"Referred to the House Committee on the Judiciary.\"
                    },
                    {
                          \"bill_id\":\"hr1465-116\",
                          \"bill_slug\":\"hr1465\",
                          \"bill_type\":\"hr\",
                          \"number\":\"H.R.1465\",
                          \"bill_uri\":\"https://api.propublica.org/congress/v1/116/bills/hr1465.json\",
                          \"title\":\"To require the Speaker of the House of Representatives to convene a session of the House on each day in which a Government shutdown is in effect, to prohibit the use of funds for the official travel of Members of the House of Representatives during any period in which a Government shutdown is in effect, and for other purposes.\",
                          \"short_title\":\"To require the Speaker of the House of Representatives to convene a session of the House on each day in which a Government shutdown is in effect, to prohibit the use of funds for the official travel of Members of the House of Representatives during any pe\",
                          \"sponsor_title\":\"Rep.\",
                          \"sponsor_id\":\"O000171\",
                          \"sponsor_name\":\"Tom O'Halleran\",
                          \"sponsor_state\":\"AZ\",
                          \"sponsor_party\":\"D\",
                          \"sponsor_uri\":\"https://api.propublica.org/congress/v1/members/O000171.json\",
                          \"gpo_pdf_uri\":null,
                          \"congressdotgov_url\":\"https://www.congress.gov/bill/116th-congress/house-bill/1465\",
                          \"govtrack_url\":\"https://www.govtrack.us/congress/bills/116/hr1465\",
                          \"introduced_date\":\"2019-02-28\",
                          \"active\":false,
                          \"last_vote\":null,
                          \"house_passage\":null,
                          \"senate_passage\":null,
                          \"enacted\":null,
                          \"vetoed\":null,
                          \"cosponsors\":0,
                          \"cosponsors_by_party\":{

                          },
                          \"committees\":\"House Rules Committee\",
                          \"committee_codes\":[
                                \"HSHA\"
                          ],
                          \"subcommittee_codes\":[

                          ],
                          \"primary_subject\":\"\",
                          \"summary\":\"\",
                          \"summary_short\":\"\",
                          \"latest_major_action_date\":\"2019-02-28\",
                          \"latest_major_action\":\"Referred to the Committee on House Administration, and in addition to the Committee on Rules, for a period to be subsequently determined by the Speaker, in each case for consideration of such provisions as fall within the jurisdiction of the committee concerned.\"
                    },
                    {
                          \"bill_id\":\"hr1464-116\",
                          \"bill_slug\":\"hr1464\",
                          \"bill_type\":\"hr\",
                          \"number\":\"H.R.1464\",
                          \"bill_uri\":\"https://api.propublica.org/congress/v1/116/bills/hr1464.json\",
                          \"title\":\"To enact House Resolution 895, One Hundred Tenth Congress, (establishing the Office of Congressional Ethics) into permanent law.\",
                          \"short_title\":\"To enact House Resolution 895, One Hundred Tenth Congress, (establishing the Office of Congressional Ethics) into permanent law.\",
                          \"sponsor_title\":\"Rep.\",
                          \"sponsor_id\":\"O000171\",
                          \"sponsor_name\":\"Tom O'Halleran\",
                          \"sponsor_state\":\"AZ\",
                          \"sponsor_party\":\"D\",
                          \"sponsor_uri\":\"https://api.propublica.org/congress/v1/members/O000171.json\",
                          \"gpo_pdf_uri\":null,
                          \"congressdotgov_url\":\"https://www.congress.gov/bill/116th-congress/house-bill/1464\",
                          \"govtrack_url\":\"https://www.govtrack.us/congress/bills/116/hr1464\",
                          \"introduced_date\":\"2019-02-28\",
                          \"active\":false,
                          \"last_vote\":null,
                          \"house_passage\":null,
                          \"senate_passage\":null,
                          \"enacted\":null,
                          \"vetoed\":null,
                          \"cosponsors\":0,
                          \"cosponsors_by_party\":{

                          },
                          \"committees\":\"House Rules Committee\",
                          \"committee_codes\":[
                                \"HSHA\"
                          ],
                          \"subcommittee_codes\":[

                          ],
                          \"primary_subject\":\"\",
                          \"summary\":\"\",
                          \"summary_short\":\"\",
                          \"latest_major_action_date\":\"2019-02-28\",
                          \"latest_major_action\":\"Referred to the Committee on House Administration, and in addition to the Committee on Rules, for a period to be subsequently determined by the Speaker, in each case for consideration of such provisions as fall within the jurisdiction of the committee concerned.\"
                    }
              ]
        }
"""
    )!
}
