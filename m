Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB14310C42D
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Nov 2019 08:05:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 942FE877DC;
	Thu, 28 Nov 2019 07:05:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XV1vJUsdY4D5; Thu, 28 Nov 2019 07:05:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4D92877A5;
	Thu, 28 Nov 2019 07:05:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B92A01BF860
 for <devel@linuxdriverproject.org>; Thu, 28 Nov 2019 07:05:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B2413877A5
 for <devel@linuxdriverproject.org>; Thu, 28 Nov 2019 07:05:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mr8wKkAnHiMR for <devel@linuxdriverproject.org>;
 Thu, 28 Nov 2019 07:05:26 +0000 (UTC)
X-Greylist: delayed 00:13:28 by SQLgrey-1.7.6
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
 (mail-eopbgr740073.outbound.protection.outlook.com [40.107.74.73])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 533AD8779F
 for <devel@driverdev.osuosl.org>; Thu, 28 Nov 2019 07:05:26 +0000 (UTC)
Received: from BYAPR02CA0029.namprd02.prod.outlook.com (2603:10b6:a02:ee::42)
 by CH2PR02MB6554.namprd02.prod.outlook.com (2603:10b6:610:66::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.21; Thu, 28 Nov
 2019 06:51:05 +0000
Received: from BL2NAM02FT058.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::203) by BYAPR02CA0029.outlook.office365.com
 (2603:10b6:a02:ee::42) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.19 via Frontend
 Transport; Thu, 28 Nov 2019 06:51:04 +0000
Authentication-Results: spf=softfail (sender IP is 149.199.60.83)
 smtp.mailfrom=gmail.com; driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=fail action=none
 header.from=gmail.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 gmail.com discourages use of 149.199.60.83 as permitted sender)
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT058.mail.protection.outlook.com (10.152.76.176) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Thu, 28 Nov 2019 06:51:03 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@gmail.com>)
 id 1iaDPn-0007XO-K8; Wed, 27 Nov 2019 22:36:35 -0800
Received: from [127.0.0.1] (helo=xsj-smtp-dlp1.xlnx.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@gmail.com>)
 id 1iaDPi-0005Ax-Gc; Wed, 27 Nov 2019 22:36:30 -0800
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xAS6aTfd004526; 
 Wed, 27 Nov 2019 22:36:29 -0800
Received: from [10.140.6.59] (helo=xhdshubhraj40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@gmail.com>)
 id 1iaDPg-00059i-Rz; Wed, 27 Nov 2019 22:36:29 -0800
From: shubhrajyoti.datta@gmail.com
To: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH v3 01/10] dt-bindings: add documentation of xilinx clocking
 wizard
Date: Thu, 28 Nov 2019 12:06:08 +0530
Message-Id: <54f8c5ce9c84265437734943f68e3ee4c2458bd5.1574922435.git.shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
References: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-Result: No--9.763-7.0-31-1
X-imss-scan-details: No--9.763-7.0-31-1;No--9.763-5.0-31-1
X-TM-AS-User-Approved-Sender: No;No
X-TM-AS-Result-Xfilter: Match text exemption rules:No
X-EOPAttributedMessage: 0
X-Matching-Connectors: 132193974640446412;
 (f9e945fa-a09a-4caa-7158-08d2eb1d8c44); ()
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(136003)(39860400002)(376002)(396003)(199004)(189003)(305945005)(316002)(70206006)(76482006)(336012)(73392003)(446003)(118296001)(81166006)(8676002)(81156014)(50226002)(8936002)(9786002)(2906002)(16586007)(48376002)(11346002)(5660300002)(51416003)(36756003)(26005)(7696005)(50466002)(498600001)(76176011)(47776003)(426003)(9686003)(356004)(107886003)(6666004)(6306002)(86362001)(4326008)(70586007)(82202003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6554; H:xsj-pvapsmtpgw01; FPR:;
 SPF:SoftFail; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a7e72aea-85d9-418d-bb0e-08d773cf5651
X-MS-TrafficTypeDiagnostic: CH2PR02MB6554:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <CH2PR02MB65543FFB27D243EA5E75573887470@CH2PR02MB6554.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 0235CBE7D0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mhlayRGDs2XBZEIbEZAkQTHcldgfZ+MtrzGHZXoxiNTRHbmnp7OSjLA2K5t8Y8HbKPecJKitYpg1+JT32dCnT+N7brvHAEXoQUEFv+e5v6MPCgsj7G9Wi7rI92/LKFCtXiP/Hq1g0grW7gtF+7Qhb3CxuI+/S9dY4figHsZhD9wTPKbJmp3M+wTJCHb+ZqByu/l9UUWBBP9btdwviBhq1+bV32BtyEPxLAgbz8gGy17Lom6oQGwUJGRaAsMUET7nuTW3Z33oJRVk76M0BWFbB07r6b//o8mLkb/SySH9glF9ZQM2vb6aq8uJprD31hh1lCk2anfkbbHhp0PsY5FyXw/lbYAGbmxwo/dEO5M5j7isUnR0cmJPMXAtacw0qWYLJYbxWe0P1NA5jKjWFNBUo6zc6p4mMW2mM7+0lybi1oYR1sUy+SVgdJWkVEy0Caye9e4FpR7CXT600oGFFfJFkRuBiCTZmjIwkQaJU6ObP5E=
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2019 06:51:03.8104 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a7e72aea-85d9-418d-bb0e-08d773cf5651
X-MS-Exchange-CrossTenant-Id: 5afe0b00-7697-4969-b663-5eab37d5f47e
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5afe0b00-7697-4969-b663-5eab37d5f47e; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6554
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>, robh+dt@kernel.org,
 soren.brinkmann@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>

Add the devicetree binding for the xilinx clocking wizard.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
---
 .../bindings/clock/xlnx,clocking-wizard.txt        | 32 ++++++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.txt

diff --git a/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.txt b/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.txt
new file mode 100644
index 0000000..aedac84
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.txt
@@ -0,0 +1,32 @@
+Binding for Xilinx Clocking Wizard IP Core
+
+This binding uses the common clock binding[1]. Details about the devices can be
+found in the product guide[2].
+
+[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
+[2] Clocking Wizard Product Guide
+http://www.xilinx.com/support/documentation/ip_documentation/clk_wiz/v5_1/pg065-clk-wiz.pdf
+
+Required properties:
+ - compatible: Must be 'xlnx,clocking-wizard'
+ - #clock-cells: Number of cells in a clock specifier. Should be 1
+ - reg: Base and size of the cores register space
+ - clocks: Handle to input clock
+ - clock-names: Tuple containing 'clk_in1' and 's_axi_aclk'
+ - clock-output-names: Names for the output clocks
+
+Optional properties:
+ - speed-grade: Speed grade of the device (valid values are 1..3)
+
+Example:
+	clock-generator@40040000 {
+		#clock-cells = <1>;
+		reg = <0x40040000 0x1000>;
+		compatible = "xlnx,clocking-wizard";
+		speed-grade = <1>;
+		clock-names = "clk_in1", "s_axi_aclk";
+		clocks = <&clkc 15>, <&clkc 15>;
+		clock-output-names = "clk_out0", "clk_out1", "clk_out2",
+				     "clk_out3", "clk_out4", "clk_out5",
+				     "clk_out6", "clk_out7";
+	};
-- 
2.1.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
