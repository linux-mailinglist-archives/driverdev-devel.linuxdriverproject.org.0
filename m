Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A8193D88D4
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 08:58:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9497F23042;
	Wed, 16 Oct 2019 06:58:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PQPionOah6fJ; Wed, 16 Oct 2019 06:58:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D0B47203E2;
	Wed, 16 Oct 2019 06:58:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D88011BF82F
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 06:58:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D346B87919
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 06:58:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JAPR0FDnIRHy for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 06:58:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C6CE587917
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 06:58:37 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9G6w29i025003; Wed, 16 Oct 2019 02:58:36 -0400
Received: from nam02-sn1-obe.outbound.protection.outlook.com
 (mail-sn1nam02lp2050.outbound.protection.outlook.com [104.47.36.50])
 by mx0a-00128a01.pphosted.com with ESMTP id 2vk8pavh7e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 16 Oct 2019 02:58:35 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bKtFoE++cjxtD4z8rp17piOgoT2IqIK1Auf3joVG/XVUfHiu0GywvdbZyK3Meh+QHb6oWLPuU7b0N+J+OhRcE3u5gobDMrNEFfl5X0/cQnMZ32IJyI1Qi//ryIfMTcrsdw7z4WalwFapGS8zll0u91X5JpKoAVrOd/j3BKx7rRv98xLR2q7hFZ0G3gSzQaYxosQ7mkhUPxSOm0vz3eHw7Tu5jSdvRRTpup1I9SVBHBOMi0mABCGeLEMwhhwp3uKQNu8LwosXD2tw7gkz0wjljVt8SCBj9BxLCOO9NDXDXbhFfq0NbzWTW1NUtiVQgx6vQuaTmfyzE5jKSBfXOdNjdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HRKM/Tw+8Fx7roqjC6nss9yvk93qgKbblpi6IRPgqug=;
 b=DN3QNKAi03+qhyXRGqNA9xzwPtvOh143D2PUQhfpHNKFpnmVBrSiLhM8kDnRUsbGr3/QKoRw17aCZf2qIW6DMF1MBO3bBiW1vXVf2RHoFpKmV+DwkW6cmLboCITklMKG8beb56ZSRr8XrjhiejYS7nlFHktETCx4BsDy0FYWHd+2CwJKL31xTjZfdWywf8vqNnKcHrFMot5Yy0qjkLrcD498C1+EtMIQ4lKXspx15pBgLeLE2GPCRqKz59qsZGKfFWIOMTQURzn8r+UM1XdI6c/HQP9tm8eUnieRLGcXtpdCRWJ589gBf7pn5HqwWnuwJg0NyKF9Ag5YkdWxbHFSOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.55) smtp.rcpttodomain=lwfinger.net smtp.mailfrom=analog.com;
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HRKM/Tw+8Fx7roqjC6nss9yvk93qgKbblpi6IRPgqug=;
 b=K4uUkZzTybjtPKXt6grlazfu5ahlsY+OtlFdWaxT2npQRBKTKPCL1QC8pMDCCRmMI0KZ4I0vgka/bI7O4A/VEDKMN9xCHutRxLAmKuSuw6jcp8+qBx28F/FZi1QhT1YWou20XWgniGJk79dscHd3TnrGx6xnXqq3UDvcjzd9Aqg=
Received: from CY4PR03CA0108.namprd03.prod.outlook.com (2603:10b6:910:4d::49)
 by SN6PR03MB3629.namprd03.prod.outlook.com (2603:10b6:805:42::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Wed, 16 Oct
 2019 06:58:33 +0000
Received: from BL2NAM02FT018.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::201) by CY4PR03CA0108.outlook.office365.com
 (2603:10b6:910:4d::49) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 16 Oct 2019 06:58:32 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.55 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.55; helo=nwd2mta1.analog.com;
Received: from nwd2mta1.analog.com (137.71.25.55) by
 BL2NAM02FT018.mail.protection.outlook.com (10.152.77.170) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2347.16
 via Frontend Transport; Wed, 16 Oct 2019 06:58:32 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta1.analog.com (8.13.8/8.13.8) with ESMTP id x9G6wPKh030844
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Tue, 15 Oct 2019 23:58:25 -0700
Received: from saturn.ad.analog.com (10.48.65.112) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Wed, 16 Oct 2019 02:58:31 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] staging: rtl8188eu: make efuse_power_switch() function static
Date: Wed, 16 Oct 2019 09:58:34 +0300
Message-ID: <20191016065834.12186-1-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.55; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(396003)(376002)(346002)(199004)(189003)(26005)(486006)(50466002)(4326008)(316002)(44832011)(7696005)(51416003)(7636002)(356004)(2870700001)(54906003)(1076003)(110136005)(5660300002)(336012)(106002)(2906002)(2616005)(476003)(426003)(305945005)(126002)(86362001)(186003)(478600001)(14444005)(50226002)(70586007)(8676002)(48376002)(246002)(70206006)(8936002)(107886003)(47776003)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR03MB3629; H:nwd2mta1.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail10.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4ff36038-77eb-496b-c965-08d7520641f8
X-MS-TrafficTypeDiagnostic: SN6PR03MB3629:
X-Microsoft-Antispam-PRVS: <SN6PR03MB36295BB9139AFC85D14B3AD0F9920@SN6PR03MB3629.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0192E812EC
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z1glPbG5KiI3Gw0YbMZBprM8cqIavatCYV1xhLolxtM0D0zSpP0tKzJ0rm1k/tPcUDdR4hkhYwQfVStY8purV8bMjQHV/RzVMku2WQgIXiKIILT8G36cWexgDE1CPFlqhMWgfWT3bt5wbeDyM4BfD+w0n+OwRxmKsSnYsf0/MtbmVpVtCXoS90sRBZt7N17e7UZoPIWWDA90c8hhfWlkEfINXImRVAW/NBszFgD/xvB8+av3uQTtdc3j91F1iDhWDGvcCS+Oecm5rw8/4Hv+hVsG7RSDcP9t0Ox0jz4bcsAEF7QMKEPvhfZEbSZt9TJE/WN68rHjsL4IKWfLjKMGUeUoj7puuywwoMUO8uOzvlR6NphB4rsOMS0NSf+DpPIbqszcoBI94L5+u+1JhysviJBnQ4Np64BwBevhBLhqy9U=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2019 06:58:32.5899 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ff36038-77eb-496b-c965-08d7520641f8
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.55];
 Helo=[nwd2mta1.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR03MB3629
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-16_02:2019-10-15,2019-10-16 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0
 mlxlogscore=999 clxscore=1011 mlxscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 lowpriorityscore=0 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1910160064
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
Cc: saurav.girepunje@gmail.com, gregkh@linuxfoundation.org,
 Alexandru Ardelean <alexandru.ardelean@analog.com>, gustavo@embeddedor.com,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The `rtl8188eu` driver is built as a kmod in order to avoid symbol
conflicts (at link-time) with other Realtek drivers.

Internally, we use this driver as builtin [vs kmod], and we've identified
the `efuse_power_switch()` symbol to be conflicting at link-time with the
one from the `rtlwifi` driver.

An alternative solution would have been to rename the function, but it
doesn't look like it's being used outside of this driver, so just make it
static.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/staging/rtl8188eu/core/rtw_efuse.c    | 2 +-
 drivers/staging/rtl8188eu/include/rtw_efuse.h | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_efuse.c b/drivers/staging/rtl8188eu/core/rtw_efuse.c
index 02c476f45b33..47eaff9ffd58 100644
--- a/drivers/staging/rtl8188eu/core/rtw_efuse.c
+++ b/drivers/staging/rtl8188eu/core/rtw_efuse.c
@@ -25,7 +25,7 @@ enum{
  * When we want to enable write operation, we should change to pwr on state.
  * When we stop write, we should switch to 500k mode and disable LDO 2.5V.
  */
-void efuse_power_switch(struct adapter *pAdapter, u8 write, u8 pwrstate)
+static void efuse_power_switch(struct adapter *pAdapter, u8 write, u8 pwrstate)
 {
 	u8 tempval;
 	u16 tmpv16;
diff --git a/drivers/staging/rtl8188eu/include/rtw_efuse.h b/drivers/staging/rtl8188eu/include/rtw_efuse.h
index 3ec53761e9fd..7a9c8ff0daa9 100644
--- a/drivers/staging/rtl8188eu/include/rtw_efuse.h
+++ b/drivers/staging/rtl8188eu/include/rtw_efuse.h
@@ -82,7 +82,6 @@ u8 efuse_OneByteWrite(struct adapter *adapter, u16 addr, u8 data);
 
 void efuse_ReadEFuse(struct adapter *Adapter, u8 efuseType, u16 _offset,
 		u16 _size_byte, u8 *pbuf);
-void efuse_power_switch(struct adapter *adapt, u8 write, u8  pwrstate);
 int Efuse_PgPacketRead(struct adapter *adapt, u8 offset, u8 *data);
 bool Efuse_PgPacketWrite(struct adapter *adapter, u8 offset, u8 word, u8 *data);
 void efuse_WordEnableDataRead(u8 word_en, u8 *sourdata, u8 *targetdata);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
