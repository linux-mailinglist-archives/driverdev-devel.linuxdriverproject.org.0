Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B690F946B
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 16:35:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4737F85D02;
	Tue, 12 Nov 2019 15:35:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DntxUS12fRut; Tue, 12 Nov 2019 15:35:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 27A99815EA;
	Tue, 12 Nov 2019 15:35:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4422B1BF59D
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 15:35:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3799A815EA
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 15:35:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Fu0-qUVcWQ3 for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 15:35:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D418185D02
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 15:35:46 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xACFNrcW025486; Tue, 12 Nov 2019 10:35:43 -0500
Received: from nam05-dm3-obe.outbound.protection.outlook.com
 (mail-dm3nam05lp2052.outbound.protection.outlook.com [104.47.49.52])
 by mx0a-00128a01.pphosted.com with ESMTP id 2w7prk91uj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 12 Nov 2019 10:35:41 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=adqkJQxLVw67gTG3TYzhfwj8+O3cou5R01gPJdpnxhKvwHuCW8oygf1PvmXvwuimXhIKQqcwPRVCl7GkenPc5GVlClk9jQqphZDeF2NDHeQhkcoO0eNXzLW+toNsnvJnGWZyU1Qc+67BQ/+MuF3dfJZreKep8fFI+aals0MgMOPKqM3Xenv9q1VEHn4gFI2iAjyr6sBjnvNfF4YFqA/g6K7/SoQji+X6t7jDPBiENViXzQ8/2VtJ2pbmyIK9ls7DoRyfcBUq8vVUGmLmTkg0f9V8mQVm4pTxVfVSoFOTF1V3SZD/52A1NzsdTwsiY6ge8Jjz6El/+hMh8B5N/8K8cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jD/nQOGiib7zK7mZP2mtSjw8rYM8H69G61waxTH9dWg=;
 b=BXa7+aFoETlnm0MslUfdUo+9Pt3r5KypVCvQr0f6Mi9Xjk6FYYrk0zyQLbxfGjjDZ1VBd8rXHoqPe3dxtspTz8X82pqonr154H6VolWRHZgj1Fn2/OWXIj9GK/x0KaGYBeYv+siTW2NwnXLhAMTRWten15r6pTDgHH7f095/GvYnPEapqeYhrODmqr16G1so9wIbR6piUaQU0JGg+/+0dWRZmIz+7yWXz1I69ola3Y7iiC1C7zVXu2VFjmVa/9nvbDaOWKq3Q2hqX0Zp2o2QI55jp4pJdS7ADm2tlOgKzvceLPMn1wmzjFP2lkyWscgUz1p7X0ouZnqh9KDfkzKAww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=analog.com;
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jD/nQOGiib7zK7mZP2mtSjw8rYM8H69G61waxTH9dWg=;
 b=zV3Nm0B2/eIYY1P1kztwT2Fv2LCh5NguvhUDbi7uX74CjZAEFqyycfBKYFjUt7fdMICTKMcTpDuWkoNlXV5hLkHwcMqmOiqu1XgcZSk/jsfW1MYG8cynDBEhXF0sBnEZZvHl24En36MMznhX2MflmagsYhd5xCLGNb6ndHxSsm0=
Received: from BN3PR03CA0094.namprd03.prod.outlook.com (2603:10b6:400:4::12)
 by DM6PR03MB3675.namprd03.prod.outlook.com (2603:10b6:5:b2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.25; Tue, 12 Nov
 2019 15:35:38 +0000
Received: from BL2NAM02FT039.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::209) by BN3PR03CA0094.outlook.office365.com
 (2603:10b6:400:4::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.22 via Frontend
 Transport; Tue, 12 Nov 2019 15:35:38 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 BL2NAM02FT039.mail.protection.outlook.com (10.152.77.152) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2430.20
 via Frontend Transport; Tue, 12 Nov 2019 15:35:38 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id xACFZTIX012368
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Tue, 12 Nov 2019 07:35:29 -0800
Received: from ben-Latitude-E6540.ad.analog.com (10.48.65.231) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Tue, 12 Nov 2019 10:35:37 -0500
From: Beniamin Bia <beniamin.bia@analog.com>
To: <jic23@kernel.org>
Subject: [PATCH 2/3] dt-binding: iio: Add documentation for ADM1177
Date: Tue, 12 Nov 2019 17:35:51 +0200
Message-ID: <20191112153552.27431-2-beniamin.bia@analog.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191112153552.27431-1-beniamin.bia@analog.com>
References: <20191112153552.27431-1-beniamin.bia@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(136003)(396003)(346002)(39860400002)(199004)(189003)(36756003)(2351001)(47776003)(2906002)(966005)(478600001)(50466002)(6666004)(356004)(246002)(6916009)(76176011)(4326008)(2616005)(476003)(486006)(426003)(44832011)(446003)(126002)(26005)(11346002)(51416003)(7696005)(107886003)(48376002)(186003)(336012)(7636002)(7416002)(305945005)(70586007)(70206006)(8936002)(1076003)(6306002)(8676002)(316002)(86362001)(50226002)(5660300002)(16586007)(106002)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR03MB3675; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 56f07365-89ae-4cad-487e-08d76785f803
X-MS-TrafficTypeDiagnostic: DM6PR03MB3675:
X-MS-Exchange-PUrlCount: 3
X-Microsoft-Antispam-PRVS: <DM6PR03MB3675C483C0C2D85533430D59F0770@DM6PR03MB3675.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 021975AE46
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: noThbQhzVj/yNN5pJoO2YJ0ee2+70HM66dAp+UF1xRfHnaVLPHHQQAgOf8CjNXd+fZgIf9Mc0wS/cXS4awngZo0RKK4lfTQhgOZz/JTun1R+jl4PEdEVJT0VUZkRdinoKZuWuOrf6vFNoIqHhzqIzHxu2YHPoBGykAzWxgsg5fpLeK6Dh1DRn6kKyyjLBEAkOfQc+gY/o3h2jYQbYgbJUKt6Ht4zh4f+jF0fPCxGFjppXFMHBLXy6e26SX4RRP9TljaWcAMHdMI3XxpfA0Dy787tUrANc/qS6ha+c/UsvugxhJ9j4pBeXBeNjJr3Tw+6LDNEzqXVYATn+wqVa/csMb/8XVO3/RALFDCcKLsmGAxqQaxQ6P8H/xNVkffQajq7Uf78Re+QPYIXGZsbfMfKD69tkqPGFV0eA7C/kWvVXjctgP1QI88y0olYCGpzqh3wyxMbdazwx0CJDHzkV89K8TtvZd0qP1q3CWrnipunSBw=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2019 15:35:38.4850 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 56f07365-89ae-4cad-487e-08d76785f803
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB3675
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-12_05:2019-11-11,2019-11-12 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0
 adultscore=0 mlxlogscore=999 phishscore=0 lowpriorityscore=0
 impostorscore=0 mlxscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1911120134
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com, lars@metafoo.de,
 biabeniamin@outlook.com, Michael.Hennerich@analog.com,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, nicolas.ferre@microchip.com, robh+dt@kernel.org,
 pmeerw@pmeerw.net, mchehab+samsung@kernel.org, paulmck@linux.ibm.com,
 Beniamin Bia <beniamin.bia@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Documentation for ADM1177 was added.

Signed-off-by: Beniamin Bia <beniamin.bia@analog.com>
---
 .../bindings/iio/adc/adi,adm1177.yaml         | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,adm1177.yaml

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,adm1177.yaml b/Documentation/devicetree/bindings/iio/adc/adi,adm1177.yaml
new file mode 100644
index 000000000000..69a0230e59f5
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/adi,adm1177.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/adi,adm1177.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices ADM1177 Hot Swap Controller and Digital Power Monitor
+
+maintainers:
+  - Michael Hennerich <michael.hennerich@analog.com>
+  - Beniamin Bia <beniamin.bia@analog.com>
+
+description: |
+  Analog Devices ADM1177 Hot Swap Controller and Digital Power Monitor
+  https://www.analog.com/media/en/technical-documentation/data-sheets/ADM1177.pdf
+
+properties:
+  compatible:
+    enum:
+      - adi,adm1177
+
+  reg:
+    maxItems: 1
+
+  avcc-supply:
+    description:
+      Phandle to the Avcc power supply
+
+  adi,r-sense-micro-ohms:
+    description:
+      The value of curent sense resistor in microohms.
+
+  adi,shutdown-threshold-microamp:
+    description:
+      Specifies the current level at which an over current alert occurs.
+    maximum: 255
+
+  adi,vrange-high-enable:
+    description:
+      Specifies which internal voltage divider to be used. A 1 selects
+      a 7:2 voltage divider while a 0 selects a 14:1 voltage divider.
+    type: boolean
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c0 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        adc@b4 {
+                compatible = "adi,adm1177";
+                reg = <0xb4>;
+        };
+    };
+...
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
