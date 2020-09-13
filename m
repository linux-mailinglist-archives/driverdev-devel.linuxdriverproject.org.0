Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6896D267FAC
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Sep 2020 15:31:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 959DE869F0;
	Sun, 13 Sep 2020 13:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GSiciizdSZxV; Sun, 13 Sep 2020 13:31:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6C85D868F9;
	Sun, 13 Sep 2020 13:31:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9B87A1BF366
 for <devel@linuxdriverproject.org>; Sun, 13 Sep 2020 13:31:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 78FB320394
 for <devel@linuxdriverproject.org>; Sun, 13 Sep 2020 13:31:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ncF8KYdJFuDn for <devel@linuxdriverproject.org>;
 Sun, 13 Sep 2020 13:31:21 +0000 (UTC)
X-Greylist: delayed 06:07:47 by SQLgrey-1.7.6
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2091.outbound.protection.outlook.com [40.107.94.91])
 by silver.osuosl.org (Postfix) with ESMTPS id D9F4720379
 for <devel@driverdev.osuosl.org>; Sun, 13 Sep 2020 13:31:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S1wKQx14PCQCt1uy7mccOEYlXooz6GQf98QnFGeEoWZfpoVK5HiXotXZB1T4KfwT7TS4HLWIKIl8T+taIUZWMlE4RuWzoBSP3lNEAZZ0ofps1UZu2vBO7lwr9prlxMh+oJkiARV0UIroBGHyl5M5PEOxfcqT//iqWkVGO5XlB3gAsxPy6XxuGqcYHDl+/Y8gwxU0DnYKO71qjybk+2rQKfWz1eiUawbn1/jbh62r2ejLo171JdguthHrvGbOnzpzBfZgpw9mOpAvr+RvbGZbWnIb7lRVE1BgRx/eJatJidaCr+Zf7XT5+atf6yD2ghpm1UTQ7suyTBdDvhRSATWlSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f95mgtcsXCIuKJ3JIfUIAvDmN+zAvLktj65OgufucJ4=;
 b=mQOk3rKJ7E/0/5sNltRLQyN3/36JFPNWD1OR48ef80VMegYsfv2CYVhGpuDNuTtuCm0nfRog3FiwG9Pi6B5xz9DtA6Su/KGZC8HQ6klA+K8p29Nj8nUhOCfmVZi5RDo5SdOS9AHwM4eivBG7f9DIs0Vrqz0zFhkgzaGlN6fbdThd8KB2qmfB2GVjP2lkXRZjYZmfC/AS260OGPuzyhoRYnKtOgyj0Q+rlMRwaGSf3lOL66mHRQV6Bew4Ux7F4LutIqZWKROFM9UKyaV/xvJihyK8IE8vMyQa6kF6t+dMPgA4cP4ttpWgflZA45sicRceF1QattvE1f2L5UtcSeZvnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=learner.manipal.edu; dmarc=pass action=none
 header.from=learner.manipal.edu; dkim=pass header.d=learner.manipal.edu;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=learnermanipal.onmicrosoft.com; s=selector2-learnermanipal-onmicrosoft-com; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f95mgtcsXCIuKJ3JIfUIAvDmN+zAvLktj65OgufucJ4=;
 b=DL/W075iCgDKYZkRPoZ+l0cxrVozFk2bB6kV18TS0Isfn+1ParvgT/gSzosfRx1qw4NZqxkG8C5ehmlID34zU7EIT+dpsoAcIQpJ12QGHwD0CH+pc/jtlKwJ4XPZ6MedEkf2p3k4XOxYBjaiIUXsH0LD4c43endjCNGNDp7WQ+M=
Authentication-Results: lwfinger.net; dkim=none (message not signed)
 header.d=none;lwfinger.net; dmarc=none action=none
 header.from=learner.manipal.edu;
Received: from BYAPR01MB4344.prod.exchangelabs.com (2603:10b6:a03:a0::13) by
 BYAPR01MB5288.prod.exchangelabs.com (2603:10b6:a03:91::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3370.17; Sun, 13 Sep 2020 13:15:34 +0000
Received: from BYAPR01MB4344.prod.exchangelabs.com
 ([fe80::e167:aa58:7a0d:dfb7]) by BYAPR01MB4344.prod.exchangelabs.com
 ([fe80::e167:aa58:7a0d:dfb7%6]) with mapi id 15.20.3370.018; Sun, 13 Sep 2020
 13:15:34 +0000
From: Sohom <sohom.datta@learner.manipal.edu>
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [RESEND(2) PATCH] staging: rtl8188eu: Fix else after return WARNING
 (checkpatch)
Date: Sun, 13 Sep 2020 18:24:39 +0530
Message-Id: <20200913125439.25036-1-sohom.datta@learner.manipal.edu>
X-Mailer: git-send-email 2.28.0
X-ClientProxiedBy: BM1PR01CA0124.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:40::18) To BYAPR01MB4344.prod.exchangelabs.com
 (2603:10b6:a03:a0::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (223.191.54.47) by
 BM1PR01CA0124.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:40::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3370.16 via Frontend Transport; Sun, 13 Sep 2020 13:15:31 +0000
X-Mailer: git-send-email 2.28.0
X-Originating-IP: [223.191.54.47]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4ce2e268-fe0c-4bda-0a12-08d857e718af
X-MS-TrafficTypeDiagnostic: BYAPR01MB5288:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR01MB5288867EA8B7F83E015D377CA7220@BYAPR01MB5288.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2276;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: d4JBzMFNP6ugno8MzApfSpNS3w2ph43QnNBnDkGCYKgOL+oPPyKH9ofz1fm4fv6j1U4H1QjHd6ltWWW1AO9EfdJxTE0JnxHXhgHGmsLEogHdhESnwkxI7Nc2eD72mOi1SPqNkIuRJL/9YbfWQKVHN6NPzyIrnD85WzSIxZnVKfigkAUKWXnsGr+CyTLFo4WDMy/aI92HNwfiV4vYawZV1/J/6acBae0pm8BkNeaHqOnX5FQ6uPhVAifVWnHjHQ7dBMT+9bNbOVhTqVRSo/PiZJec3XcG7efP+MlU7SuzU5V0YI3dqcw7Y7MbJ33Pl6ZMkFobJr+AjXUcPkU9T23EUIMoYcURTvPdlsjRP7/dOV1BZUWH1ShtyScAMDcnvlOR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR01MB4344.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(136003)(396003)(39850400004)(366004)(1076003)(26005)(8936002)(83380400001)(16526019)(186003)(2906002)(956004)(6486002)(110136005)(786003)(478600001)(316002)(2616005)(8676002)(5660300002)(52116002)(75432002)(6512007)(4326008)(86362001)(107886003)(66556008)(6506007)(66476007)(66946007)(69590400008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: wKm3fmDkvhADkVOawtM/LbMSnHABAZDYdJhnMu5e49A3TuX+H6zu3LHAPvZBEQMrZn7qBiB8lOPjOQJMnI28qbcNa9vmq2zmpUe8E0WzymfV02Dp68LNDOLpJj6gE5hfB5Nqn2G0G3gfTnz71lUUMGqYj/Z2kcT1/YbiKEJKvZMtpm+cP5O6HXq8qAKNardTfEoQ7qAx36nFOjzqYsKkYlCddz01+ETybntvApp9cRx8G9/F8GWqu/DStBnBH12GIsT5H4UbCtAbP6rR7bI6lUnQ9jisDf3fqWrSeqNadE1tbnhzWc6AWp/J8W0KAapFRGnB0pVp7d9TuDueCfQvM/SToyEdZvAAMv0UQsgvvV2n3LZl3R4D34jw88x/GtEOqnArIWZEr3S+/NliFKaMoTLaUT98tMi9xQvqQRM8VRjJYoxfB2y4nLIpzvCR+dSt1mmUlnA1nUvR1C2qI7VjzhIvvjnn/iTCKtg0BFZYIW5S6f9sEQII52BhPS1p1Zh+zt5GoFVHDGCvG0K0h8Yh3souAVGlCtDMlbOo+M1TNoYMzkEtGz7/8R4w4sgi/wbTYEu3N2KTj4C32Kw5Rt9QsQKCTG7tq9ohvkx0SbSHyMbhVu+/NYBw5/mxz2R4KV7q+fk+i02JmS7cmiw2yQjE6w==
X-OriginatorOrg: learner.manipal.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ce2e268-fe0c-4bda-0a12-08d857e718af
X-MS-Exchange-CrossTenant-AuthSource: BYAPR01MB4344.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2020 13:15:34.1668 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 29bebd42-f1ff-4c3d-9688-067e3460dc1f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bvCQTREoMxr2P8YSaOhGydcLyTYVCaboj8zWGD6t5Px2eHO3RnnEnnIBhhxSpMFPjRW9uTZ0at31mFEx2K/uWp+G3kry1SkDQXZvRmP0snI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB5288
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
Cc: Sohom <sohom.datta@learner.manipal.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed:
WARNING: else is not generally useful after a break or return
1636: FILE: ./rtw_recv.c:1636:
+           return false;
+       else

Separated the return statement into a separate block since
it doesn't seem to depend on the SN_LESS explicity being false.

Signed-off-by: Sohom <sohom.datta@learner.manipal.edu>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 5fe7a0458dd2..5e81134ffb6d 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -1629,10 +1629,11 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
 		hdr = list_entry(plist, struct recv_frame, list);
 		pnextattrib = &hdr->attrib;
 
+		if (SN_EQUAL(pnextattrib->seq_num, pattrib->seq_num))
+			return false;
+
 		if (SN_LESS(pnextattrib->seq_num, pattrib->seq_num))
 			plist = plist->next;
-		else if (SN_EQUAL(pnextattrib->seq_num, pattrib->seq_num))
-			return false;
 		else
 			break;
 	}
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
