Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4101A46C2
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Apr 2020 15:33:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4C86C882BB;
	Fri, 10 Apr 2020 13:33:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Rb0IVaoJRcp; Fri, 10 Apr 2020 13:33:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5AFE688275;
	Fri, 10 Apr 2020 13:33:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 09CF11BF27C
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 13:33:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 056EC88161
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 13:33:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y8k+p-L8VK6d for <devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 13:33:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2076.outbound.protection.outlook.com [40.107.243.76])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 813E6878F4
 for <devel@driverdev.osuosl.org>; Fri, 10 Apr 2020 13:33:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xplqye7VFTMOtvMguqt5x0LP84S1J6YT2H53F2NLe2uBdOcpKkJJZBWksMJqJ8aIFzILiAeXob1oIq7ZFNbvpjxj1OnrvxoirSavuX8EB9KD2tkUSXY+3frwkIEhXY1JW0yn+ZLzurI4Of1P6AJ0IeY/+eU9xFxD8042FK1sPXOgsMuHJqZhvSeb76aiM0oqcJvG9bWB45x9jFFOtHr0hXpB2OnlqXDZDle3IbmS3TVA/ZCelILbYnE9FvTdIxxiaR4N3tQ4EubyjvbQcP58cIRuA7PAWBlUjjy3h8zSXxbqDmdxFVY9YLHAI9dJQ7RFpv7oaCU2Be+4HTrOIrVryg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9pLQq6o+gVwbcpjPZoHdr6jmvl/zD0xDyVzifFhX/kQ=;
 b=ImHb6PPRwCBlNI8GnvpZDQC0SvnmCs5/vP76ZGl0u2y88TX5JErXLNTKA41Zi1NYtA99V++kuv1NVKvbz3NB3oC0RZgNFmcLtWDt4ebyJ0tzKGcPkuNKvfeCP9UCGTpfQm+xezt1C9tzAx+jMrN1aAZ4kEYeVhn+jirnZfPuCPYK/WmFYKrqQkxyY1NlEsRxDIM/GsJtryrI/NExHZ8XodAHhSQVSic4K5RnMpksH6c3vYZWZPzEgJSVb7PJGwJiXW9RWidv0ZvHbmdvrd2HB88LOIkpaSibtSAcZY1dQR+JR6G4ts8d2OKFY54ufNoUGG8rPlCICGB1QKZV241X3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9pLQq6o+gVwbcpjPZoHdr6jmvl/zD0xDyVzifFhX/kQ=;
 b=V15mqtmZ7MEteDfIMZorpRln/6yTG/ehVGUZtgzHYIPGn4RioE/MnIPeTFczymsenQHxDi7d1BanaGNG5O7Omf9gIi9XI+qwV7pkOkULD/8YhlPX2SWN96lY9mq2w2PUvbGs3zC7KPsF86gVcP7mld9td8IX+BaMl0x/mRwlbS4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (2603:10b6:208:13f::22)
 by MN2PR11MB4398.namprd11.prod.outlook.com (2603:10b6:208:18b::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Fri, 10 Apr
 2020 13:33:08 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::3d0a:d9ac:3df4:8b1]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::3d0a:d9ac:3df4:8b1%6]) with mapi id 15.20.2878.021; Fri, 10 Apr 2020
 13:33:08 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 05/19] staging: wfx: set all parameters before starting AP
Date: Fri, 10 Apr 2020 15:32:25 +0200
Message-Id: <20200410133239.438347-6-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200410133239.438347-1-Jerome.Pouiller@silabs.com>
References: <20200410133239.438347-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: DM5PR15CA0056.namprd15.prod.outlook.com
 (2603:10b6:3:ae::18) To MN2PR11MB4063.namprd11.prod.outlook.com
 (2603:10b6:208:13f::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (2a01:e35:2435:66a0:1265:30ff:fefd:6e7f) by
 DM5PR15CA0056.namprd15.prod.outlook.com (2603:10b6:3:ae::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.15 via Frontend Transport; Fri, 10 Apr 2020 13:33:07 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [2a01:e35:2435:66a0:1265:30ff:fefd:6e7f]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dc5f3257-0172-4815-a052-08d7dd53b4ef
X-MS-TrafficTypeDiagnostic: MN2PR11MB4398:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR11MB43985E5E84486EADC2A9956393DE0@MN2PR11MB4398.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2000;
X-Forefront-PRVS: 0369E8196C
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4063.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(366004)(346002)(396003)(136003)(39850400004)(376002)(107886003)(81156014)(54906003)(8676002)(86362001)(1076003)(6666004)(8936002)(4326008)(52116002)(66574012)(7696005)(316002)(66556008)(66946007)(186003)(478600001)(2906002)(6486002)(2616005)(66476007)(16526019)(5660300002)(36756003);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: izLELvSWaS+z+KGfLdC65nbADG9PaHKPzoWklmNzh+gWrQIGlBMoZ249hEnz26bqzNEssvp/kgRWCIqP252Ts5746yZ60fi7wczeoe4pLZ51tTlPlqjMGDOqNNkpr/6eentgLoz8ymdxWTB5FJA1T1Rn2Ga4GxVVjr4YFb9fzmfNNXvyoy8Smf4f8hhGq9Wk2fhp9snBuOhuKHedaGUrCgFtMgK4RBNOnclk22rAaJFjSC4fJ7CjEZentXH0U69GUaTp6gs42bUGq3jozL63OS6GuNkP6+6/+Zbgnx5pEQCYDzU34aj88ZSCOTu1mXTF55V22f78yojk6Y4nP7qONeAmQL8uVLhmu1z+hQKtgc6UG1ifz4SMa7WEOWDni8cLnr92B8d0BCw+psINvzqmxeFCwoWvZ80tVu4o7CEUeXf4ESEkE0E4oI7kRQMDge4O
X-MS-Exchange-AntiSpam-MessageData: A/Ukp1BWA4r7UlwY0ynj4sCoqdSaod+AwdylsoAD1Bf08F3PNhbFjECoJ/RBrheEtjufyZ6uSI0h2tVPHs7v1v1O6ZjCSsTyPq8c1e4RB9ZgHaSNBgstYfgA8VhMufxPIDGws0gzLlSYWRNcoJu7BoSsd6EWkyCNV+2nENJTTVBfTbvP9FBjwdasiBWv7inH1jzne4PVtHGfB6r2AvU9bA==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc5f3257-0172-4815-a052-08d7dd53b4ef
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2020 13:33:08.6659 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q9lFGKOm1IByjgyStqHqUI65UkMQjlHngWPRHb5lsEUffK8mnoimdB4EplfGFU66SPURvVz2VrGp0QP4LaQhhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4398
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKQ3Vy
cmVudCBjb2RlIHN0YXJ0IEFQIGFuZCB0aGVuIGNvbmZpZ3VyZSB0aGUgZGlmZmVyZW50IHBhcmFt
ZXRlcnMuIFNpbmNlCmFsbCB0aGUgY29uZmlndXJhdGlvbiBpcyBzZW50IHF1aWNrbHkgYWZ0ZXIg
QVAgc3RhcnRlZCwgaXQgd29ya3MuCkhvd2V2ZXIsIGl0IGlzIG5vdCB2ZXJ5IG5pY2UuIEluIGFk
ZCwgbGFzdCBmaXJtd2FyZSByZWxlYXNlcyBzdGFydCB0bwpkaXNhbGxvdyBpbmNvcnJlY3Qgc2V0
dGluZ3MuCgpTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVy
QHNpbGFicy5jb20+Ci0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYyB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jCmluZGV4
IDkyYmYzMTdiNTdiYi4uMWU3ZmYyYmEzM2Q4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcv
d2Z4L3N0YS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMKQEAgLTYwNCw3ICs2MDQs
NiBAQCBpbnQgd2Z4X3N0YXJ0X2FwKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVl
ZTgwMjExX3ZpZiAqdmlmKQogewogCXN0cnVjdCB3ZnhfdmlmICp3dmlmID0gKHN0cnVjdCB3Znhf
dmlmICopdmlmLT5kcnZfcHJpdjsKIAotCWhpZl9zdGFydCh3dmlmLCAmdmlmLT5ic3NfY29uZiwg
d3ZpZi0+Y2hhbm5lbCk7CiAJd2Z4X3VwbG9hZF9rZXlzKHd2aWYpOwogCWlmICh3dmlmX2NvdW50
KHd2aWYtPndkZXYpIDw9IDEpCiAJCWhpZl9zZXRfYmxvY2tfYWNrX3BvbGljeSh3dmlmLCAweEZG
LCAweEZGKTsKQEAgLTYxMiw2ICs2MTEsNyBAQCBpbnQgd2Z4X3N0YXJ0X2FwKHN0cnVjdCBpZWVl
ODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlmKQogCXdmeF91cGRhdGVfZmls
dGVyaW5nKHd2aWYpOwogCXdmeF91cGxvYWRfYXBfdGVtcGxhdGVzKHd2aWYpOwogCXdmeF9md2Rf
cHJvYmVfcmVxKHd2aWYsIGZhbHNlKTsKKwloaWZfc3RhcnQod3ZpZiwgJnZpZi0+YnNzX2NvbmYs
IHd2aWYtPmNoYW5uZWwpOwogCXJldHVybiAwOwogfQogCi0tIAoyLjI1LjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
