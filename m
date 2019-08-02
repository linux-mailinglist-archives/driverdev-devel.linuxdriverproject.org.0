Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 303EB7F4F9
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 12:24:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1AA2586A92;
	Fri,  2 Aug 2019 10:24:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DZaEEDL3EjKt; Fri,  2 Aug 2019 10:24:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5FDA686A63;
	Fri,  2 Aug 2019 10:24:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7B3CA1BF356
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 10:24:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 77A6620344
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 10:24:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kynnkdMC43Wd for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 10:24:45 +0000 (UTC)
X-Greylist: delayed 00:21:00 by SQLgrey-1.7.6
Received: from mx0b-00128a01.pphosted.com (mx0b-00128a01.pphosted.com
 [148.163.139.77])
 by silver.osuosl.org (Postfix) with ESMTPS id 7E28A23355
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 10:24:45 +0000 (UTC)
Received: from pps.filterd (m0167090.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x72A2LAk010592; Fri, 2 Aug 2019 06:04:00 -0400
Received: from nam04-sn1-obe.outbound.protection.outlook.com
 (mail-sn1nam04lp2050.outbound.protection.outlook.com [104.47.44.50])
 by mx0b-00128a01.pphosted.com with ESMTP id 2u4ddxrvsa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 02 Aug 2019 06:04:00 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rb/OfeNA2Nq64143x2fad4CuV7Yq75Kzr8k2Wjw+g9RdbqwWFy+WIF9yQCirWiDPpcsuFQznPCbLMD/XKDecIzkX3XgDV57aIYAB2kBOXxfmk/AUr+riBLN0x1HZ676ll78D1co6OSZz8MKYvQrWp2sNB7KBPwWjTtxy3WYdy/AbJz9wtqQbdNDLCDsHFFvyIRML32XeMK9+JjxNL3B30+D98++7FOYcyi2Zx9my1MxoFIyDLsrBT8MpyRBJhPT0aUUDEnC+HorezwzPunTMEi195jqvy7aI7KA9EyGjkA8eopDNPiCH2MBJUjpJLIOVCc1fhVP6uxiQiwoyVzeRxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=utBhN++MhKQFax2kh7OMZcnoDF4bfN76p+WVFccSRH0=;
 b=lDLw/ymq3hCQ5VvihtA05zvsMJu7cHI3H6SgtU3HYKPlrDY9H/KgAanDDuDiq805838HIPYns0mlgqIQsYtkegURRw6H/IytkAqZEvEA/KPsmJJArvmVLujgdKZ6jwnP4elbeVjL6Pzf+qDiEsHN9GB4JQB7zwd9RWrBwWGMW9pyeKI7i1ldZVtzxU0jUvv066cETHhbJ8Razhf24bzZl9mRijp4EJggNCaAsYHraJUW2rCMAyVXt1UlZXOvAP1PgSS6xwpEO6W6KPz2jEsw7gUOdE5U6ZzA8mxo467/N2wDxW+mBnvaRIBFwg+iJ+5BhrS8TDkMKg9/Xp5pLDkIBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=analog.com;dmarc=bestguesspass action=none
 header.from=analog.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=utBhN++MhKQFax2kh7OMZcnoDF4bfN76p+WVFccSRH0=;
 b=YSlyciQTQOQ1bvkg9gtSnu8uDmhJl8TjjwZH+NpwJKhQHjuokw/j4iq9rp9XG6rDShO8VKcwYvsDKV8UP3JkIIeoGPRjgzBWXk8YkpHVZ+cs4bhpA3AO7gn0zLZlppDmdHJG4z3zbT6eU6LBKZ71gKzc9vlkqokJfS/LohQ1ZBU=
Received: from MWHPR03CA0007.namprd03.prod.outlook.com (2603:10b6:300:117::17)
 by BLUPR03MB584.namprd03.prod.outlook.com (2a01:111:e400:887::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2094.16; Fri, 2 Aug
 2019 10:03:57 +0000
Received: from BL2NAM02FT037.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::209) by MWHPR03CA0007.outlook.office365.com
 (2603:10b6:300:117::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2136.13 via Frontend
 Transport; Fri, 2 Aug 2019 10:03:57 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 BL2NAM02FT037.mail.protection.outlook.com (10.152.77.11) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2136.14
 via Frontend Transport; Fri, 2 Aug 2019 10:03:56 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x72A3ujl025333
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Fri, 2 Aug 2019 03:03:56 -0700
Received: from ben-Latitude-E6540.ad.analog.com (10.48.65.163) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Fri, 2 Aug 2019 06:03:55 -0400
From: Beniamin Bia <beniamin.bia@analog.com>
To: <jic23@kernel.org>
Subject: [PATCH 4/4] dt-bindings: iio: adc: Add AD7606B ADC documentation
Date: Fri, 2 Aug 2019 13:03:04 +0300
Message-ID: <20190802100304.15899-4-beniamin.bia@analog.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190802100304.15899-1-beniamin.bia@analog.com>
References: <20190802100304.15899-1-beniamin.bia@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(396003)(136003)(346002)(39860400002)(2980300002)(189003)(199004)(5660300002)(316002)(16586007)(966005)(478600001)(6916009)(47776003)(106002)(126002)(26005)(50466002)(7696005)(51416003)(86362001)(2906002)(1076003)(54906003)(6306002)(48376002)(426003)(486006)(246002)(50226002)(186003)(7416002)(76176011)(4326008)(44832011)(2616005)(476003)(36756003)(11346002)(446003)(7636002)(14444005)(107886003)(8676002)(70206006)(356004)(336012)(8936002)(6666004)(70586007)(305945005)(2351001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR03MB584; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d59deb3c-c6e1-45de-912e-08d71730bb89
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:BLUPR03MB584; 
X-MS-TrafficTypeDiagnostic: BLUPR03MB584:
X-MS-Exchange-PUrlCount: 3
X-Microsoft-Antispam-PRVS: <BLUPR03MB584598DE3F92FF14B5FBE9BF0D90@BLUPR03MB584.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 011787B9DD
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: DyzTSCjEU2FXVSYpte4abospIdq6gmcxUjZ0bYf5i7/xxZhaD5pEiGPHk4vXSuTNzO5q1j3mcmqCbBdjC3GWVsbh9K93aRKNEjMadFNwcws2k6DASe4y5JvsgKSIRLcWuvHpR4ezhjex5ZA23AnDcjSSvVh8iqVVIzg+lMucV3jxast1QqDmlDxLFEO8EOrKt7njEa5yPiSDLhlljPdNHmCMAeeuSBG4y3QUIijM0bQKFs6rFEUqsoQO2VopDsNdOGflqpvPj2ypjyP7vaUOtKL9ePhtwUPMEQVx0uVJijYT44dWNTTTE6nz6yQ2FX5qx3tUU8YDo9j2shfh2RBQl5Xg1vODMNM3U5DhhaNWC8Z9TtcRa4+zeRLpIZrnx9Bhg4V/7HCJxIAxMQhTB0F4xQ+M4uAxoEv0lZ35EZhHAmk=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2019 10:03:56.7467 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d59deb3c-c6e1-45de-912e-08d71730bb89
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR03MB584
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-02_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908020102
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
 pmeerw@pmeerw.net, knaack.h@gmx.de, mchehab+samsung@kernel.org,
 paulmck@linux.ibm.com, Beniamin Bia <beniamin.bia@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Documentation for AD7606B Analog to Digital Converter and software
mode was added.

Signed-off-by: Beniamin Bia <beniamin.bia@analog.com>
---
 Documentation/devicetree/bindings/iio/adc/adi,ad7606.txt  | 8 ++++++++
 Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml | 4 +++-
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.txt b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.txt
index d8652460198e..9cc7ea19eca6 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.txt
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.txt
@@ -7,6 +7,7 @@ Required properties for the AD7606:
 	* "adi,ad7606-8"
 	* "adi,ad7606-6"
 	* "adi,ad7606-4"
+	* "adi,ad7606b"
 	* "adi,ad7616"
 - reg: SPI chip select number for the device
 - spi-max-frequency: Max SPI frequency to use
@@ -42,6 +43,12 @@ Optional properties:
 - adi,oversampling-ratio-gpios: must be the device tree identifier of the over-sampling
 				mode pins. As the line is active high, it should be marked
 				GPIO_ACTIVE_HIGH.
+- adi,sw-mode: Boolean, software mode of operation, so far available only for ad7606b.
+	Software mode is enabled when all three oversampling mode pins are connected to
+	high level. The AD7606B is configured by the corresponding registers. If the
+	adi,oversampling-ratio-gpios property is defined, then the driver will set the
+	oversampling gpios to high. Otherwise, it is assumed that the pins are hardwired
+	to VDD.
 
 Example:
 
@@ -63,4 +70,5 @@ Example:
 						&gpio 23 GPIO_ACTIVE_HIGH
 						&gpio 26 GPIO_ACTIVE_HIGH>;
 		standby-gpios = <&gpio 24 GPIO_ACTIVE_LOW>;
+		adi,sw-mode;
 	};
diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
index 509dbe9c84d2..2afe31747a70 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
@@ -13,6 +13,7 @@ maintainers:
 description: |
   Analog Devices AD7606 Simultaneous Sampling ADC
   https://www.analog.com/media/en/technical-documentation/data-sheets/ad7606_7606-6_7606-4.pdf
+  https://www.analog.com/media/en/technical-documentation/data-sheets/AD7606B.pdf
   https://www.analog.com/media/en/technical-documentation/data-sheets/AD7616.pdf
 
 properties:
@@ -22,6 +23,7 @@ properties:
       - adi,ad7606-8
       - adi,ad7606-6
       - adi,ad7606-4
+      - adi,ad7606b
       - adi,ad7616
 
   reg:
@@ -87,7 +89,7 @@ properties:
 
   adi,sw-mode:
     description:
-      Software mode of operation, so far available only for ad7616.
+      Software mode of operation, so far available only for ad7616 and ad7606B.
       It is enabled when all three oversampling mode pins are connected to
       high level. The device is configured by the corresponding registers. If the
       adi,oversampling-ratio-gpios property is defined, then the driver will set the
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
