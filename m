Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEA51A8608
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 18:54:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 19EAD87E14;
	Tue, 14 Apr 2020 16:54:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IxtxwF+Z0k8v; Tue, 14 Apr 2020 16:54:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7284387D54;
	Tue, 14 Apr 2020 16:54:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 041AC1BF45A
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 16:54:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F2E9720341
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 16:54:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JliwJ-zvedgf for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 16:53:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2052.outbound.protection.outlook.com [40.107.22.52])
 by silver.osuosl.org (Postfix) with ESMTPS id 25748203A4
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 16:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yot3Zxj9fu5OJnFKoioziT1z8b6vkpN8f/vIFsaKci8=;
 b=0y5xFEfUG7nVhWtTte9YvO2PP1RoDHKduEg2Ld4xDM2P1j9//LhwMKwzq0lzYsycqWjACuUdiZuSFZN7UyPejJbN/SQYwp6qlpnEdybvwYPJ5OBaxSLTXaMj3y9CaCh+39jjGwsmmJI+Zf7UgeeN7YDrSGtq9pTStEKOKfy+Gww=
Received: from AM6PR02CA0032.eurprd02.prod.outlook.com (2603:10a6:20b:6e::45)
 by VI1PR08MB3967.eurprd08.prod.outlook.com (2603:10a6:803:df::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Tue, 14 Apr
 2020 14:20:27 +0000
Received: from AM5EUR03FT018.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:6e:cafe::c) by AM6PR02CA0032.outlook.office365.com
 (2603:10a6:20b:6e::45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15 via Frontend
 Transport; Tue, 14 Apr 2020 14:20:27 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; driverdev.osuosl.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;driverdev.osuosl.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT018.mail.protection.outlook.com (10.152.16.114) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.18 via Frontend Transport; Tue, 14 Apr 2020 14:20:26 +0000
Received: ("Tessian outbound af37c2b81632:v50");
 Tue, 14 Apr 2020 14:20:25 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 9cd3325e54d7a9a2
X-CR-MTA-TID: 64aa7808
Received: from 56e8c3965797.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 6AB08F36-6864-41D0-823F-0AE3BB2C1C3F.1; 
 Tue, 14 Apr 2020 14:20:20 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 56e8c3965797.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 14 Apr 2020 14:20:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ebpxkd8D6c41cV5AMCM4D7BVbRZSjUFS+6jE+qEzbfiDcVHfrKIWIAlD0m+OA7eJNkHNPhEgSSSuy9orDR4ROJDT3nAsG5wr9P4xQ7c4oOYP3+JurV+dz7fkpvHXzx3DtcNtcvD/FMxUzCx5qGwsWsNA3nYq532U4vX+fTGpeZ2eZt7yborfCLe9K53Gzvds8s8cTnPwujRNks9+CNdCg04lgFrdlMzsAZqm9s2aYv4ddmBp9JwNCCuOFf45WzSjbKLjtAlQjkDdW3OJe4XjoFbEImbcmrfM7lA1O6xZK5qjACglFA5z+5hI63xs281NMZQyXzbP0oggm1yvhVeqRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yot3Zxj9fu5OJnFKoioziT1z8b6vkpN8f/vIFsaKci8=;
 b=MW8wCF4r14msGevWpf4egYtM/cqFG60QVVctpcRNKAMFwlcvYcmTB0mx0PNz/qKJzu4LFxDvPpWEiBnxvXF9J3vucgQVJ4BoS93bKkH/xaGiYF3xaHOT9MuU8ucqlLzbQuEMMB+pQbw1/jHmMWukROcRl1DByZaewHMSer4El3lqqcR1BmSPzQq3KjXN3THSfP8ya8ajG3mXxTQHDdQBLPCahstA/xKq3uI2mmGUZiRbVS8WEoNSmw70Zgz75bb/kz0uA2sVefAR2Fhe5LBJsio+8t7zUoyl995IZOedwrt52s5O8e+npOgnTaogH23ETX/70G8L7b3lUcEawqUuiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 40.67.248.234) smtp.rcpttodomain=lists.linaro.org smtp.mailfrom=arm.com;
 dmarc=bestguesspass action=none header.from=arm.com; dkim=none (message not
 signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yot3Zxj9fu5OJnFKoioziT1z8b6vkpN8f/vIFsaKci8=;
 b=0y5xFEfUG7nVhWtTte9YvO2PP1RoDHKduEg2Ld4xDM2P1j9//LhwMKwzq0lzYsycqWjACuUdiZuSFZN7UyPejJbN/SQYwp6qlpnEdybvwYPJ5OBaxSLTXaMj3y9CaCh+39jjGwsmmJI+Zf7UgeeN7YDrSGtq9pTStEKOKfy+Gww=
Received: from VI1P194CA0033.EURP194.PROD.OUTLOOK.COM (2603:10a6:803:3c::22)
 by DBBPR08MB4235.eurprd08.prod.outlook.com (2603:10a6:10:c2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17; Tue, 14 Apr
 2020 14:20:16 +0000
Received: from VE1EUR03FT023.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:803:3c:cafe::63) by VI1P194CA0033.outlook.office365.com
 (2603:10a6:803:3c::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15 via Frontend
 Transport; Tue, 14 Apr 2020 14:20:16 +0000
Authentication-Results-Original: spf=pass (sender IP is 40.67.248.234)
 smtp.mailfrom=arm.com; lists.linaro.org; dkim=none (message not signed)
 header.d=none;lists.linaro.org; dmarc=bestguesspass action=none
 header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 40.67.248.234 as permitted sender) receiver=protection.outlook.com;
 client-ip=40.67.248.234; helo=nebula.arm.com;
Received: from nebula.arm.com (40.67.248.234) by
 VE1EUR03FT023.mail.protection.outlook.com (10.152.18.133) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.2900.18 via Frontend Transport; Tue, 14 Apr 2020 14:20:15 +0000
Received: from AZ-NEU-EX03.Arm.com (10.251.24.31) by AZ-NEU-EX03.Arm.com
 (10.251.24.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1415.2; Tue, 14 Apr
 2020 14:19:18 +0000
Received: from e123356-lin.trondheim.arm.com (10.40.16.105) by mail.arm.com
 (10.251.24.31) with Microsoft SMTP Server id 15.1.1415.2 via Frontend
 Transport; Tue, 14 Apr 2020 14:19:17 +0000
From: =?UTF-8?q?=C3=98rjan=20Eide?= <orjan.eide@arm.com>
To: 
Subject: [PATCH] staging: android: ion: Skip sync if not mapped
Date: Tue, 14 Apr 2020 16:18:47 +0200
Message-ID: <20200414141849.55654-1-orjan.eide@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414134629.54567-1-orjan.eide@arm.com>
References: <20200414134629.54567-1-orjan.eide@arm.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 1
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report-Untrusted: CIP:40.67.248.234; CTRY:IE; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:nebula.arm.com; PTR:InfoDomainNonexistent;
 CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(346002)(376002)(46966005)(186003)(36756003)(86362001)(5660300002)(82740400003)(316002)(7416002)(54906003)(8936002)(70206006)(70586007)(8676002)(478600001)(81166007)(336012)(47076004)(1076003)(81156014)(2906002)(6666004)(356005)(26005)(4326008)(2616005)(109986005)(7696005)(426003)(266003);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 458a1f20-7c14-4503-0bbd-08d7e07efa4d
X-MS-TrafficTypeDiagnostic: DBBPR08MB4235:|VI1PR08MB3967:
X-Microsoft-Antispam-PRVS: <VI1PR08MB396719B6AAC69B1E46CB234590DA0@VI1PR08MB3967.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;OLM:10000;
X-Forefront-PRVS: 0373D94D15
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: vwt6JmX/jYgYH221sT3He0dXJ9cM5UO91FaGM6MJ3VQTfWd1/8g6S0WXYq5PuvSVFd9o7Q/h2aDk8P/V+LX84kpKBCg7NvPVPD0SDMSpxzpTLCAc+YgC3HQVHfEyUac8WmV9TKGKcSYIWDkvS6LsAPzA7Af0bF5gab8UPFxm3VYMnNGg7u2gdus2TKVv1pB++DrcTsTTye8OwZxNjYR0yMC7CdaG+6y6UC64iPn37Cy7vqs1DISoQbQFzwb+FAG6c/J62jqxHwbFT2KelceKSE10KSw0ab3EXRTbxsteWG5C2KNk4RLtzj1JS8vOwByZFwhsiYqTGvJKq6n8GVi4emgcH11elcnOyz01WMXUQuXAPhQiB7iixGSQetVaMGJ2gitGlyi/G5lqzh4gxWYkoHzeT4OK5ssV+ryWDqoUQJ7+WWw7GPZxMc4hAE4n7dZDKG/+nE0bxWkjzNShrRdeK/oK8dM1uxVQWv5b4vpTdQJWX79/Z8bTbdXnVZ09DVqPcJQkKOyaI8TOjLKU6hugBhjRCJJTu9E1pEHKAEPsq7A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4235
Original-Authentication-Results: spf=pass (sender IP is 40.67.248.234)
 smtp.mailfrom=arm.com; lists.linaro.org; dkim=none (message not signed)
 header.d=none;lists.linaro.org; dmarc=bestguesspass action=none
 header.from=arm.com;
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT018.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(346002)(136003)(46966005)(426003)(109986005)(6666004)(26005)(4326008)(336012)(2616005)(36756003)(82740400003)(7696005)(54906003)(316002)(186003)(107886003)(36906005)(70586007)(70206006)(8936002)(5660300002)(478600001)(1076003)(86362001)(26826003)(47076004)(81156014)(2906002)(81166007)(8676002)(266003);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: c2b39d7b-d07f-4370-27b8-08d7e07ef3ba
X-Forefront-PRVS: 0373D94D15
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tArPHjonaepqxLvS/3dboCIJqB7efWMnPwMicnMHwtSPsyjFwoPAcWV5IU/wah+Ut7I6jMx5f1Qg2nFTLykVtovcUdvL0nCWSLJxOFdWpO3RRSs3rXQhN9KEUvVPFxz7v8OyFTkvdJ1/iWj3GgH5Mw2rQ1XMs3/AvZmYY4gs4VintzxUyE6QuYR/qztrcza3+xtFTmmWiRVM0FDUllhfYrAoPysI1aDJDosWwdX1KJcJTK9w4jrZm8hRtZn4DadJZv8+PIGJCX+/EZ9XrTBDSG9ob+7NlHp8nDLVPqH62ee0x/DtPtSxedKmAKnRxpBQve45JKj1ZPpJBKgbTqW9YLHYBlEOoURaD8Bia/UpigtJncr8cEl03e4NY7uUR4CARM2vo+DTyXyrwebSTcmJKiyUFrMv77amLTG7n66HpNJlXRprgU0cGNSKN7kJran8eZrJvo+Ib/E2FKQxqeLtbe5Zl8mUAB56GlCyND5pBA4Zj5laPmimfrTgtwoAB5JpCJJXY0mdkRX7q/b+HAm6/hsgl6um2aA9Husf7hhAOY8=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2020 14:20:26.5328 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 458a1f20-7c14-4503-0bbd-08d7e07efa4d
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3967
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
Cc: devel@driverdev.osuosl.org, nd@arm.com, Todd Kjos <tkjos@android.com>,
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
cnRpb25zKCspCgpSZXN1Ym1pdCB3aXRob3V0IGRpc2NsYWltZXIsIHNvcnJ5IGFib3V0IHRoYXQu
CgpUaGlzIHNlZW1zIHRvIGJlIHBhcnQgb2YgYSBiaWdnZXIgaXNzdWUgd2hlcmUgZG1hLWJ1ZiBl
eHBvcnRlcnMgYXNzdW1lCnRoYXQgdGhlaXIgZG1hLWJ1ZiBiZWdpbl9jcHVfYWNjZXNzIGFuZCBl
bmRfY3B1X2FjY2VzcyBjYWxsYmFja3MgaGF2ZSBhCmNlcnRhaW4gZ3VhcmFudGVlZCBiZWhhdmlv
ciwgd2hpY2ggaXNuJ3QgZW5zdXJlZCBieSBkbWEtYnVmIGNvcmUuCgpUaGlzIHBhdGNoIGZpeGVz
IHRoaXMgaW4gaW9uIG9ubHksIGJ1dCBpdCBhbHNvIG5lZWRzIHRvIGJlIGZpeGVkIGZvcgpvdGhl
ciBleHBvcnRlcnMsIGVpdGhlciBoYW5kbGVkIGxpa2UgdGhpcyBpbiBlYWNoIGV4cG9ydGVyLCBv
ciBpbgpkbWEtYnVmIGNvcmUgYmVmb3JlIGNhbGxpbmcgaW50byB0aGUgZXhwb3J0ZXJzLgoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYyBiL2RyaXZlcnMvc3Rh
Z2luZy9hbmRyb2lkL2lvbi9pb24uYwppbmRleCAzOGI1MWVhY2U0ZjkuLjdiNzUyYmEwY2I2ZCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jCisrKyBiL2RyaXZl
cnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYwpAQCAtMTczLDYgKzE3Myw3IEBAIHN0cnVjdCBp
b25fZG1hX2J1Zl9hdHRhY2htZW50IHsKIAlzdHJ1Y3QgZGV2aWNlICpkZXY7CiAJc3RydWN0IHNn
X3RhYmxlICp0YWJsZTsKIAlzdHJ1Y3QgbGlzdF9oZWFkIGxpc3Q7CisJYm9vbCBtYXBwZWQ6MTsK
IH07CiAKIHN0YXRpYyBpbnQgaW9uX2RtYV9idWZfYXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFi
dWYsCkBAIC0xOTUsNiArMTk2LDcgQEAgc3RhdGljIGludCBpb25fZG1hX2J1Zl9hdHRhY2goc3Ry
dWN0IGRtYV9idWYgKmRtYWJ1ZiwKIAlhLT50YWJsZSA9IHRhYmxlOwogCWEtPmRldiA9IGF0dGFj
aG1lbnQtPmRldjsKIAlJTklUX0xJU1RfSEVBRCgmYS0+bGlzdCk7CisJYS0+bWFwcGVkID0gZmFs
c2U7CiAKIAlhdHRhY2htZW50LT5wcml2ID0gYTsKIApAQCAtMjMxLDYgKzIzMyw4IEBAIHN0YXRp
YyBzdHJ1Y3Qgc2dfdGFibGUgKmlvbl9tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2ht
ZW50ICphdHRhY2htZW50LAogCQkJZGlyZWN0aW9uKSkKIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01F
TSk7CiAKKwlhLT5tYXBwZWQgPSB0cnVlOworCiAJcmV0dXJuIHRhYmxlOwogfQogCkBAIC0yMzgs
NiArMjQyLDEwIEBAIHN0YXRpYyB2b2lkIGlvbl91bm1hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVm
X2F0dGFjaG1lbnQgKmF0dGFjaG1lbnQsCiAJCQkgICAgICBzdHJ1Y3Qgc2dfdGFibGUgKnRhYmxl
LAogCQkJICAgICAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyZWN0aW9uKQogeworCXN0cnVj
dCBpb25fZG1hX2J1Zl9hdHRhY2htZW50ICphID0gYXR0YWNobWVudC0+cHJpdjsKKworCWEtPm1h
cHBlZCA9IGZhbHNlOworCiAJZG1hX3VubWFwX3NnKGF0dGFjaG1lbnQtPmRldiwgdGFibGUtPnNn
bCwgdGFibGUtPm5lbnRzLCBkaXJlY3Rpb24pOwogfQogCkBAIC0yOTcsNiArMzA1LDggQEAgc3Rh
dGljIGludCBpb25fZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzKHN0cnVjdCBkbWFfYnVmICpkbWFi
dWYsCiAKIAltdXRleF9sb2NrKCZidWZmZXItPmxvY2spOwogCWxpc3RfZm9yX2VhY2hfZW50cnko
YSwgJmJ1ZmZlci0+YXR0YWNobWVudHMsIGxpc3QpIHsKKwkJaWYgKCFhLT5tYXBwZWQpCisJCQlj
b250aW51ZTsKIAkJZG1hX3N5bmNfc2dfZm9yX2NwdShhLT5kZXYsIGEtPnRhYmxlLT5zZ2wsIGEt
PnRhYmxlLT5uZW50cywKIAkJCQkgICAgZGlyZWN0aW9uKTsKIAl9CkBAIC0zMjAsNiArMzMwLDgg
QEAgc3RhdGljIGludCBpb25fZG1hX2J1Zl9lbmRfY3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hYnVmLAogCiAJbXV0ZXhfbG9jaygmYnVmZmVyLT5sb2NrKTsKIAlsaXN0X2Zvcl9lYWNoX2Vu
dHJ5KGEsICZidWZmZXItPmF0dGFjaG1lbnRzLCBsaXN0KSB7CisJCWlmICghYS0+bWFwcGVkKQor
CQkJY29udGludWU7CiAJCWRtYV9zeW5jX3NnX2Zvcl9kZXZpY2UoYS0+ZGV2LCBhLT50YWJsZS0+
c2dsLCBhLT50YWJsZS0+bmVudHMsCiAJCQkJICAgICAgIGRpcmVjdGlvbik7CiAJfQotLSAKMi4x
Ny4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
