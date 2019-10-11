Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2DAD3E61
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 13:24:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE9F9852CF;
	Fri, 11 Oct 2019 11:24:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TXsUlGgcyWnU; Fri, 11 Oct 2019 11:24:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 04689851A4;
	Fri, 11 Oct 2019 11:24:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8509A1BF29A
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 11:24:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7FA5388843
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 11:24:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RGYCqxwflepA for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 11:24:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DD30A887B0
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 11:24:39 +0000 (UTC)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9BBNKSo032535; Fri, 11 Oct 2019 07:24:38 -0400
Received: from nam03-by2-obe.outbound.protection.outlook.com
 (mail-by2nam03lp2055.outbound.protection.outlook.com [104.47.42.55])
 by mx0a-00128a01.pphosted.com with ESMTP id 2ver39tsun-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 11 Oct 2019 07:24:37 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QAbV6NHFjcLoxeX/xfoa868GN/ZftgQbxd+IliAx3awL70FEXDf1rM6gB2qFqiTTC7dnvVe65Tg5wPQBnUXWPHoP3p7FlTj4kjPR/M+k5qm1AQyLrShpoo45BOwjrDSjMm3gqwT6/vMQsQ62SGAN0ejXezTp36t2xOVwBEb3qXv3sOXnp6ufOJXPlk49ig7IDkhKcovJj/+zWNXPmey1F/rhF2qMmNEksP5zAKgVcplIT0ZleSRBZqMdrr+gf3zIlPXXHFF+xR1c9wuK9fPaFT7MqUVkUUM21uHOyBL83z8LsXmi4hHDgioLkitoh9gqO0eN5YuFWQAl+U6DAHnNCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UecsuwIlDuMt6hY26F++j0IJTG/Ss49mpjPSgf6brqA=;
 b=aL4k+y3xSytd1x2UEL7995779Eyyaexm0Ii1KMqgbDcMyiQCna6wFciy8AVV851yDcnCyykBSc/TZL27/p4AnKvo/l3dd5AnGYrozvMDSz0YYleidLdyJuGlMuToZvDhX8OrWcSAGIDvh+1JxvHUgUoawMm+rVP9lV5cpm8FVl4mzS2rmPxqqswccPtXu8wYxe7aX5WEy5OJwv1zxk/gXH90H6XvPtOoZXrbFFTrslK5NifzOXz70H0oiVsKk2xfqrMxQH7RFgL6UnVw4Au4VPH9dzzMn3MG0qdsgfIgY3H9IgZoRy5HHqJgyJDNkEPQYoRYAPgkkoo/h/EkVbTrmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=analog.com;
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UecsuwIlDuMt6hY26F++j0IJTG/Ss49mpjPSgf6brqA=;
 b=B+FAPzZIwSbVOHEqJ6w6AxXCdAjGwGilaSjeleAHuuqdhOFhSFlnYT0aqY8bGAKt/0HD9Bi2e9dSJmuMBdYLuVwxhJu03Fm9KNfbdP/7MOkisp5uqE6jdeewTzvndd7oFZtMScbcKpnYh4UWd/13hwMhSRm9v4zg7nLJAxye7vg=
Received: from CY4PR03CA0084.namprd03.prod.outlook.com (2603:10b6:910:4d::25)
 by BL0PR03MB4244.namprd03.prod.outlook.com (2603:10b6:208:6b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Fri, 11 Oct
 2019 11:24:36 +0000
Received: from BL2NAM02FT004.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::206) by CY4PR03CA0084.outlook.office365.com
 (2603:10b6:910:4d::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Fri, 11 Oct 2019 11:24:35 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 BL2NAM02FT004.mail.protection.outlook.com (10.152.76.168) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2347.16
 via Frontend Transport; Fri, 11 Oct 2019 11:24:35 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x9BBOYVW007663
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Fri, 11 Oct 2019 04:24:34 -0700
Received: from saturn.ad.analog.com (10.48.65.112) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Fri, 11 Oct 2019 07:24:34 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <dri-devel@lists.freedesktop.org>, <linux-fbdev@vger.kernel.org>,
 <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] staging: fbtft: fbtft-core: Fix last line displayed on fbcon
Date: Fri, 11 Oct 2019 14:24:41 +0300
Message-ID: <20191011112441.31003-1-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(346002)(136003)(376002)(199004)(189003)(476003)(14444005)(305945005)(186003)(7636002)(4744005)(48376002)(107886003)(44832011)(478600001)(50466002)(5660300002)(86362001)(47776003)(54906003)(7696005)(486006)(8936002)(2906002)(2201001)(246002)(110136005)(336012)(316002)(126002)(106002)(50226002)(356004)(51416003)(8676002)(4326008)(36756003)(1076003)(2616005)(26005)(426003)(2870700001)(70586007)(6666004)(70206006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR03MB4244; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 575679d8-49d4-4c6c-7d38-08d74e3d98b4
X-MS-TrafficTypeDiagnostic: BL0PR03MB4244:
X-Microsoft-Antispam-PRVS: <BL0PR03MB4244C69F05785428EE31546EF9970@BL0PR03MB4244.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-Forefront-PRVS: 0187F3EA14
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ezdf7aAyn33UfCeeB6mk4ltlw26Q6i34+0L2Z4xwTb8n41oLt1EezEAO0D3w8a3gJ5oIIZ44sYplV6Sr3cNZpZ96a2yF17ocXnS7vAcZBD3VHB6wp4sZqMWN/YoI8IflxWwm8DWban45fKQ09uPPhqevQoBMoY/fWY0vOpc7wVX+7oGuaq863QAJWDeVA5BauoqQK41xT0nSJYn/4uijHxIT5F7QbGWrOiefQUJR/uLP+5RgxU/36T9QWe7LU7eGwIcSn7jITIZfPUtsnUU5u8HSsiU2O2E6cTmBEJHh/Tr87erUuEVQQRJoG14irctJB3LZO7FPqBCPBF6D2P9r9fnD2bKWwrZELnaLfOBy9piBstD7C8qaYgdyBYFX5mxxWWs64nEL+iHZKJF6VKZGuj8t870CrUcpmwQQogmJpJ8=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2019 11:24:35.7651 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 575679d8-49d4-4c6c-7d38-08d74e3d98b4
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR03MB4244
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-11_07:2019-10-10,2019-10-11 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 mlxscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1011 malwarescore=0 impostorscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1910110109
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
Cc: nishadkamdar@gmail.com, Michael Hennerich <michael.hennerich@analog.com>,
 gregkh@linuxfoundation.org, bhanusreemahesh@gmail.com, daniel.vetter@ffwll.ch,
 Alexandru Ardelean <alexandru.ardelean@analog.com>, preid@electromag.com.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Michael Hennerich <michael.hennerich@analog.com>

For the special case when fbtft_mkdirty() is called with with -1 for the y
coordinate, the height is truncated by 1.

This isn't required, and causes the last line to not update.

Signed-off-by: Michael Hennerich <michael.hennerich@analog.com>
Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/staging/fbtft/fbtft-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index cf5700a2ea66..90eec45d11fc 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -317,7 +317,7 @@ static void fbtft_mkdirty(struct fb_info *info, int y, int height)
 	/* special case, needed ? */
 	if (y == -1) {
 		y = 0;
-		height = info->var.yres - 1;
+		height = info->var.yres;
 	}
 
 	/* Mark display lines/area as dirty */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
