Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEEF1A7EB5
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 15:47:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D1F8D20796;
	Tue, 14 Apr 2020 13:47:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H0u0n5CBu06M; Tue, 14 Apr 2020 13:47:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BB547204A9;
	Tue, 14 Apr 2020 13:47:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 22C331BF3BA
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 13:47:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1E5C58777B
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 13:47:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DytELKfDY4cL for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 13:47:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr70089.outbound.protection.outlook.com [40.107.7.89])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DE0D08657C
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 13:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bC7j1Zj4y5mIGXCP+MT8yqQBhySeisf48q0gLE5hvKQ=;
 b=N7hHaZrdBjcM4hhZlLDf4iVXCHOTAegsG+g4BYAydne1mpThFAp4/p1kSsjgojQ1wi2DvGbqEpaVuZb7KeTCdwSK+fMcUl6ZgPMB98r7xLGFcEAhUcFsevoqNciSLc5wrcMyQLC/VLVed4agbb1T/RZOnf7fljGFZSqfYVuXSYI=
Received: from AM6P191CA0043.EURP191.PROD.OUTLOOK.COM (2603:10a6:209:7f::20)
 by AM0PR08MB4436.eurprd08.prod.outlook.com (2603:10a6:208:13a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.28; Tue, 14 Apr
 2020 13:47:31 +0000
Received: from AM5EUR03FT052.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:7f:cafe::17) by AM6P191CA0043.outlook.office365.com
 (2603:10a6:209:7f::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15 via Frontend
 Transport; Tue, 14 Apr 2020 13:47:31 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; driverdev.osuosl.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;driverdev.osuosl.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT052.mail.protection.outlook.com (10.152.17.161) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.15 via Frontend Transport; Tue, 14 Apr 2020 13:47:30 +0000
Received: ("Tessian outbound eadf07c3b4bb:v50");
 Tue, 14 Apr 2020 13:47:29 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 62c0907afbdc7e40
X-CR-MTA-TID: 64aa7808
Received: from 9a99640b1180.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 DAD7CB87-2015-4625-B0C4-7DA69BA9DCEE.1; 
 Tue, 14 Apr 2020 13:47:23 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 9a99640b1180.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 14 Apr 2020 13:47:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lczVclKocjtdvFm8J+qBgxH3CNbT0DO26U/Fi5x48uhaq8eobHryIFqdbVGJvztLHwb6zFiVcnD4XxV6/fcOBzYuQ/xFX5jk2IPohBGwDNAJw8b6cfRSqNpCNS/TjVZdoVwmCdTa3m7ncdrJiPHrHjeOiel+NN0kF2xaQ9EhvLjfJvhs0f+ar72gX2jo9glA9qo75JY1ZDSZVe/9MOCytb4dplgi7YVVP7JUoIr5d56hTExERIfSHSz728a6Lv6hX07yKh4khZO8ldNqqjhUyDgsohVcf7wWQq9deWJzP6wUbmkohHoa6N62gmEABct/R+sy9bi9A0ictLjCF6B7hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bC7j1Zj4y5mIGXCP+MT8yqQBhySeisf48q0gLE5hvKQ=;
 b=N6RpR+Gx0WjMIYgNLT15y5AqPaMagr5CUaM5FwG/3IF5EbGpGP52jLdU2tUlRxgv4aNegt5FFxE9O0u43XWZBPRCbHgcj1LYPhO/cru/fhlDBB8vy95n8aRsl3R1C1vb1aReREuN+B1dvHbVGQcaCUivlIsJ6O5t8ok1+btDc+4u1VJd6WvYRJpxzEYc5Uh8p/65WWGNNn5bReQu/2XV1z9FI39RIpkZij1BmAgz4iL9gkp/NsT0naIPuJkNsmKx8bXJ/TVKp1UAsyX4knmZy7Nn1/YMdGpVgWiuFubzT99/4pCzfvkg7PVnJj6JJKmLVoHKZQaHRXBwLS9avgQ/0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 40.67.248.234) smtp.rcpttodomain=linaro.org smtp.mailfrom=arm.com;
 dmarc=bestguesspass action=none header.from=arm.com; dkim=none (message not
 signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bC7j1Zj4y5mIGXCP+MT8yqQBhySeisf48q0gLE5hvKQ=;
 b=N7hHaZrdBjcM4hhZlLDf4iVXCHOTAegsG+g4BYAydne1mpThFAp4/p1kSsjgojQ1wi2DvGbqEpaVuZb7KeTCdwSK+fMcUl6ZgPMB98r7xLGFcEAhUcFsevoqNciSLc5wrcMyQLC/VLVed4agbb1T/RZOnf7fljGFZSqfYVuXSYI=
Received: from AM6PR0502CA0064.eurprd05.prod.outlook.com
 (2603:10a6:20b:56::41) by DB7PR08MB3465.eurprd08.prod.outlook.com
 (2603:10a6:10:50::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.20; Tue, 14 Apr
 2020 13:47:20 +0000
Received: from VE1EUR03FT041.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:56:cafe::a5) by AM6PR0502CA0064.outlook.office365.com
 (2603:10a6:20b:56::41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.16 via Frontend
 Transport; Tue, 14 Apr 2020 13:47:20 +0000
Authentication-Results-Original: spf=pass (sender IP is 40.67.248.234)
 smtp.mailfrom=arm.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 40.67.248.234 as permitted sender) receiver=protection.outlook.com;
 client-ip=40.67.248.234; helo=nebula.arm.com;
Received: from nebula.arm.com (40.67.248.234) by
 VE1EUR03FT041.mail.protection.outlook.com (10.152.19.163) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.2900.18 via Frontend Transport; Tue, 14 Apr 2020 13:47:19 +0000
Received: from AZ-NEU-EX03.Arm.com (10.251.24.31) by AZ-NEU-EX03.Arm.com
 (10.251.24.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1415.2; Tue, 14 Apr
 2020 13:47:05 +0000
Received: from e123356-lin.trondheim.arm.com (10.40.16.105) by mail.arm.com
 (10.251.24.31) with Microsoft SMTP Server id 15.1.1415.2 via Frontend
 Transport; Tue, 14 Apr 2020 13:47:04 +0000
From: =?UTF-8?q?=C3=98rjan=20Eide?= <orjan.eide@arm.com>
To: 
Subject: [PATCH] staging: android: ion: Skip sync if not mapped
Date: Tue, 14 Apr 2020 15:46:27 +0200
Message-ID: <20200414134629.54567-1-orjan.eide@arm.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EOPAttributedMessage: 1
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report-Untrusted: CIP:40.67.248.234; CTRY:IE; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:nebula.arm.com; PTR:InfoDomainNonexistent;
 CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(136003)(39860400002)(46966005)(26005)(109986005)(426003)(47076004)(86362001)(36756003)(336012)(7416002)(1076003)(81156014)(6666004)(2616005)(70586007)(7696005)(8676002)(54906003)(70206006)(186003)(2906002)(82740400003)(316002)(356005)(478600001)(8936002)(4326008)(81166007)(5660300002)(266003);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ba289de5-0a13-44cf-b935-08d7e07a6036
X-MS-TrafficTypeDiagnostic: DB7PR08MB3465:|AM0PR08MB4436:
X-Microsoft-Antispam-PRVS: <AM0PR08MB443638D2E48F53973D3CE4C090DA0@AM0PR08MB4436.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;OLM:10000;
X-Forefront-PRVS: 0373D94D15
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: OGuNZ9Sp55GW2uy07GFxMH/CEdnN8U6hHYJ+sLt2NUjAjZN2HCtqsI7/S3Vhl5dsxZdE9FXbQEOgLYb/C4XXB0dqEdKHCxh2O9zs+FmkbOx3QW9JNiuPWXw6S7aDBr8Rq4MnYfRGt+rW8zMoHZLSNmPjHtoDnf6wOtPmw5i9q99WSIsmO/xqi/jnIX/qMqBmpeLV7iLJ34r1g0JqyzsH0paK0Q/dPXXJo3IpzjJU3iQCETclb/5J65Ik53iHcMzcusdAjYNQ3jX272YxlquGpMXXC8ewtGcQ77jnmDwLhLcC/KWgkWJuGXIn2NarFqs+fckVG2F9z+KYfxc5dCEwTP+8zY/Xxg5FuLAHNS5CsGcKo4hXxyNikQbBBsf4rqM/XMO4YW/mtFSTfr4RGdMXc7RbBS+jsmgJ5TDk30t7mTjqoqFzo8eoJKjy4YhOaZu43gS5qOjR7pAjmfh10p5zYg8I1n0/gjFRHjVs+1GoIMCAIRvUFwXSarGR4D9U4Rdu2JHsm5CKqkGTWbz3/cDTP5bfBC4+4Ue7u8n5iFNMFOo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3465
Original-Authentication-Results: spf=pass (sender IP is 40.67.248.234)
 smtp.mailfrom=arm.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=arm.com;
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT052.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(376002)(39860400002)(46966005)(5660300002)(186003)(26826003)(316002)(2906002)(36906005)(4326008)(6666004)(47076004)(7696005)(82740400003)(81166007)(81156014)(478600001)(70586007)(1076003)(336012)(36756003)(8676002)(426003)(54906003)(107886003)(2616005)(86362001)(8936002)(26005)(70206006)(109986005)(266003);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 5c68708c-7b33-4645-c6e1-08d7e07a5a24
X-Forefront-PRVS: 0373D94D15
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P0ahLo9rRDxrAa/z5c62JezKS0L+/oJXgebXMHcxuKz0mJ6HDVFpqiabB70dXc8ZSY5yl3404umqZ+r4NRTOIWSACgkgpri3NPkqYqf8Jzm3MpCgQv8OQmoPgrrk95XnLRrfmW6Qg82GNbQ+KOpxtGZp8jjeQM7RNDU7RHrsixv7G4yV/lcumN9bOonE/RQxhg05o1B6TPA10XvRZLIii8mZ8/EvVM8PJaBqPEmKD4BJX27mldKY/9o9Qfc0Tz6Xs6X8ORUxAahi3zC++t38pwGeKFIMHbrrP1BJSpkiYn3D35CCmXtBgR/BjiAjIUr7w8zWzK67mXMJIPdyt8CJY23RfOSXwidf3bV2yyvZQb2Dm1ajGNNe+pgfwFa746plU1z1xvegfrGMluI21e1rU97xy40VA3hXUdHlYtjhMt0lka+NQW16pXkRH7oOMTDgyOZlkN3Ajgq62O77o7fh69OiiVxj3RKVV7cc/ieqMh6+gdA9dcoh7VpTt6kuMCjkgFlef8ZJxvsnqj9eBdBl895oQ80GGGiOz3x8sB6stM4=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2020 13:47:30.0445 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ba289de5-0a13-44cf-b935-08d7e07a6036
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4436
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Lecopzer Chen <lecopzer.chen@mediatek.com>, Arnd
 Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 john.stultz@linaro.org, anders.pedersen@arm.com, Daniel
 Vetter <daniel.vetter@ffwll.ch>, Joel Fernandes <joel@joelfernandes.org>,
 "Darren Hart \(VMware\)" <dvhart@infradead.org>, orjan.eide@arm.com,
 Laura Abbott <labbott@redhat.com>, Martijn Coenen <maco@android.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T25seSBzeW5jIHRoZSBzZy1saXN0IG9mIGFuIElvbiBkbWEtYnVmIGF0dGFjaG1lbnQgd2hlbiB0
aGUgYXR0YWNobWVudAppcyBhY3R1YWxseSBtYXBwZWQgb24gdGhlIGRldmljZS4KCmRtYS1idWZz
IG1heSBiZSBzeW5jZWQgYXQgYW55IHRpbWUuIEl0IGNhbiBiZSByZWFjaGVkIGZyb20gdXNlciBz
cGFjZQp2aWEgRE1BX0JVRl9JT0NUTF9TWU5DLCBzbyB0aGVyZSBhcmUgbm8gZ3VhcmFudGVlcyBm
cm9tIGNhbGxlcnMgb24gd2hlbgpzeW5jcyBtYXkgYmUgYXR0ZW1wdGVkLCBhbmQgZG1hX2J1Zl9l
bmRfY3B1X2FjY2VzcygpIGFuZApkbWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3MoKSBtYXkgbm90IGJl
IHBhaXJlZC4KClNpbmNlIHRoZSBzZ19saXN0J3MgZG1hX2FkZHJlc3MgaXNuJ3Qgc2V0IHVwIHVu
dGlsIHRoZSBidWZmZXIgaXMgdXNlZApvbiB0aGUgZGV2aWNlLCBhbmQgZG1hX21hcF9zZygpIGlz
IGNhbGxlZCBvbiBpdCwgdGhlIGRtYV9hZGRyZXNzIHdpbGwgYmUKTlVMTCBpZiBzeW5jIGlzIGF0
dGVtcHRlZCBvbiB0aGUgZG1hLWJ1ZiBiZWZvcmUgaXQncyBtYXBwZWQgb24gYSBkZXZpY2UuCgpC
ZWZvcmUgdjUuMCAoY29tbWl0IDU1ODk3YWY2MzA5MSAoImRtYS1kaXJlY3Q6IG1lcmdlIHN3aW90
bGJfZG1hX29wcwppbnRvIHRoZSBkbWFfZGlyZWN0IGNvZGUiKSkgdGhpcyB3YXMgYSBwcm9ibGVt
IGFzIHRoZSBkbWEtYXBpIChhdCBsZWFzdAp0aGUgc3dpb3RsYl9kbWFfb3BzIG9uIGFybTY0KSB3
b3VsZCB1c2UgdGhlIHBvdGVudGlhbGx5IGludmFsaWQKZG1hX2FkZHJlc3MuIEhvdyB0aGF0IGZh
aWxlZCBkZXBlbmRlZCBvbiBob3cgdGhlIGRldmljZSBoYW5kbGVkIHBoeXNpY2FsCmFkZHJlc3Mg
MC4gSWYgMCB3YXMgYSB2YWxpZCBhZGRyZXNzIHRvIHBoeXNpY2FsIHJhbSwgdGhhdCBwYWdlIHdv
dWxkIGdldApmbHVzaGVkIGEgbG90LCB3aGlsZSB0aGUgYWN0dWFsIHBhZ2VzIGluIHRoZSBidWZm
ZXIgd291bGQgbm90IGdldCBzeW5jZWQKY29ycmVjdGx5LiBXaGlsZSBpZiAwIGlzIGFuIGludmFs
aWQgcGh5c2ljYWwgYWRkcmVzcyBpdCBtYXkgY2F1c2UgYQpmYXVsdCBhbmQgdHJpZ2dlciBhIGNy
YXNoLgoKSW4gdjUuMCB0aGlzIHdhcyBpbmNpZGVudGFsbHkgZml4ZWQgYnkgY29tbWl0IDU1ODk3
YWY2MzA5MSAoImRtYS1kaXJlY3Q6Cm1lcmdlIHN3aW90bGJfZG1hX29wcyBpbnRvIHRoZSBkbWFf
ZGlyZWN0IGNvZGUiKSwgYXMgdGhpcyBtb3ZlZCB0aGUKZG1hLWFwaSB0byB1c2UgdGhlIHBhZ2Ug
cG9pbnRlciBpbiB0aGUgc2dfbGlzdCwgYW5kIChmb3IgSW9uIGJ1ZmZlcnMgYXQKbGVhc3QpIHRo
aXMgd2lsbCBhbHdheXMgYmUgdmFsaWQgaWYgdGhlIHNnX2xpc3QgZXhpc3RzIGF0IGFsbC4KCkJ1
dCwgdGhpcyBpc3N1ZSBpcyByZS1pbnRyb2R1Y2VkIGluIHY1LjMgd2l0aApjb21taXQgNDQ5ZmE1
NGQ2ODE1ICgiZG1hLWRpcmVjdDogY29ycmVjdCB0aGUgcGh5c2ljYWwgYWRkciBpbgpkbWFfZGly
ZWN0X3N5bmNfc2dfZm9yX2NwdS9kZXZpY2UiKSBtb3ZlcyB0aGUgZG1hLWFwaSBiYWNrIHRvIHRo
ZSBvbGQKYmVoYXZpb3VyIGFuZCBwaWNrcyB0aGUgZG1hX2FkZHJlc3MgdGhhdCBtYXkgYmUgaW52
YWxpZC4KCmRtYS1idWYgY29yZSBkb2Vzbid0IGVuc3VyZSB0aGF0IHRoZSBidWZmZXIgaXMgbWFw
cGVkIG9uIHRoZSBkZXZpY2UsIGFuZAp0aHVzIGhhdmUgYSB2YWxpZCBzZ19saXN0LCBiZWZvcmUg
Y2FsbGluZyB0aGUgZXhwb3J0ZXIncwpiZWdpbl9jcHVfYWNjZXNzLgoKU2lnbmVkLW9mZi1ieTog
w5hyamFuIEVpZGUgPG9yamFuLmVpZGVAYXJtLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvYW5k
cm9pZC9pb24vaW9uLmMgfCAxMiArKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNl
cnRpb25zKCspCgpUaGlzIHNlZW1zIHRvIGJlIHBhcnQgb2YgYSBiaWdnZXIgaXNzdWUgd2hlcmUg
ZG1hLWJ1ZiBleHBvcnRlcnMgYXNzdW1lCnRoYXQgdGhlaXIgZG1hLWJ1ZiBiZWdpbl9jcHVfYWNj
ZXNzIGFuZCBlbmRfY3B1X2FjY2VzcyBjYWxsYmFja3MgaGF2ZSBhCmNlcnRhaW4gZ3VhcmFudGVl
ZCBiZWhhdmlvciwgd2hpY2ggaXNuJ3QgZW5zdXJlZCBieSBkbWEtYnVmIGNvcmUuCgpUaGlzIHBh
dGNoIGZpeGVzIHRoaXMgaW4gaW9uIG9ubHksIGJ1dCBpdCBhbHNvIG5lZWRzIHRvIGJlIGZpeGVk
IGZvcgpvdGhlciBleHBvcnRlcnMsIGVpdGhlciBoYW5kbGVkIGxpa2UgdGhpcyBpbiBlYWNoIGV4
cG9ydGVyLCBvciBpbgpkbWEtYnVmIGNvcmUgYmVmb3JlIGNhbGxpbmcgaW50byB0aGUgZXhwb3J0
ZXJzLgoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYyBiL2Ry
aXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYwppbmRleCAzOGI1MWVhY2U0ZjkuLjdiNzUy
YmEwY2I2ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jCisr
KyBiL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYwpAQCAtMTczLDYgKzE3Myw3IEBA
IHN0cnVjdCBpb25fZG1hX2J1Zl9hdHRhY2htZW50IHsKICAgICAgICBzdHJ1Y3QgZGV2aWNlICpk
ZXY7CiAgICAgICAgc3RydWN0IHNnX3RhYmxlICp0YWJsZTsKICAgICAgICBzdHJ1Y3QgbGlzdF9o
ZWFkIGxpc3Q7CisgICAgICAgYm9vbCBtYXBwZWQ6MTsKIH07Cgogc3RhdGljIGludCBpb25fZG1h
X2J1Zl9hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwKQEAgLTE5NSw2ICsxOTYsNyBAQCBz
dGF0aWMgaW50IGlvbl9kbWFfYnVmX2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLAogICAg
ICAgIGEtPnRhYmxlID0gdGFibGU7CiAgICAgICAgYS0+ZGV2ID0gYXR0YWNobWVudC0+ZGV2Owog
ICAgICAgIElOSVRfTElTVF9IRUFEKCZhLT5saXN0KTsKKyAgICAgICBhLT5tYXBwZWQgPSBmYWxz
ZTsKCiAgICAgICAgYXR0YWNobWVudC0+cHJpdiA9IGE7CgpAQCAtMjMxLDYgKzIzMyw4IEBAIHN0
YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKmlvbl9tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRh
Y2htZW50ICphdHRhY2htZW50LAogICAgICAgICAgICAgICAgICAgICAgICBkaXJlY3Rpb24pKQog
ICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7CgorICAgICAgIGEtPm1hcHBl
ZCA9IHRydWU7CisKICAgICAgICByZXR1cm4gdGFibGU7CiB9CgpAQCAtMjM4LDYgKzI0MiwxMCBA
QCBzdGF0aWMgdm9pZCBpb25fdW5tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50
ICphdHRhY2htZW50LAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3Qgc2dfdGFi
bGUgKnRhYmxlLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbnVtIGRtYV9kYXRhX2Rp
cmVjdGlvbiBkaXJlY3Rpb24pCiB7CisgICAgICAgc3RydWN0IGlvbl9kbWFfYnVmX2F0dGFjaG1l
bnQgKmEgPSBhdHRhY2htZW50LT5wcml2OworCisgICAgICAgYS0+bWFwcGVkID0gZmFsc2U7CisK
ICAgICAgICBkbWFfdW5tYXBfc2coYXR0YWNobWVudC0+ZGV2LCB0YWJsZS0+c2dsLCB0YWJsZS0+
bmVudHMsIGRpcmVjdGlvbik7CiB9CgpAQCAtMjk3LDYgKzMwNSw4IEBAIHN0YXRpYyBpbnQgaW9u
X2RtYV9idWZfYmVnaW5fY3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLAoKICAgICAg
ICBtdXRleF9sb2NrKCZidWZmZXItPmxvY2spOwogICAgICAgIGxpc3RfZm9yX2VhY2hfZW50cnko
YSwgJmJ1ZmZlci0+YXR0YWNobWVudHMsIGxpc3QpIHsKKyAgICAgICAgICAgICAgIGlmICghYS0+
bWFwcGVkKQorICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKICAgICAgICAgICAgICAg
IGRtYV9zeW5jX3NnX2Zvcl9jcHUoYS0+ZGV2LCBhLT50YWJsZS0+c2dsLCBhLT50YWJsZS0+bmVu
dHMsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRpcmVjdGlvbik7CiAgICAg
ICAgfQpAQCAtMzIwLDYgKzMzMCw4IEBAIHN0YXRpYyBpbnQgaW9uX2RtYV9idWZfZW5kX2NwdV9h
Y2Nlc3Moc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwKCiAgICAgICAgbXV0ZXhfbG9jaygmYnVmZmVy
LT5sb2NrKTsKICAgICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5KGEsICZidWZmZXItPmF0dGFjaG1l
bnRzLCBsaXN0KSB7CisgICAgICAgICAgICAgICBpZiAoIWEtPm1hcHBlZCkKKyAgICAgICAgICAg
ICAgICAgICAgICAgY29udGludWU7CiAgICAgICAgICAgICAgICBkbWFfc3luY19zZ19mb3JfZGV2
aWNlKGEtPmRldiwgYS0+dGFibGUtPnNnbCwgYS0+dGFibGUtPm5lbnRzLAogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBkaXJlY3Rpb24pOwogICAgICAgIH0KLS0KMi4xNy4x
CgpJTVBPUlRBTlQgTk9USUNFOiBUaGUgY29udGVudHMgb2YgdGhpcyBlbWFpbCBhbmQgYW55IGF0
dGFjaG1lbnRzIGFyZSBjb25maWRlbnRpYWwgYW5kIG1heSBhbHNvIGJlIHByaXZpbGVnZWQuIElm
IHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIHBsZWFzZSBub3RpZnkgdGhlIHNl
bmRlciBpbW1lZGlhdGVseSBhbmQgZG8gbm90IGRpc2Nsb3NlIHRoZSBjb250ZW50cyB0byBhbnkg
b3RoZXIgcGVyc29uLCB1c2UgaXQgZm9yIGFueSBwdXJwb3NlLCBvciBzdG9yZSBvciBjb3B5IHRo
ZSBpbmZvcm1hdGlvbiBpbiBhbnkgbWVkaXVtLiBUaGFuayB5b3UuCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
