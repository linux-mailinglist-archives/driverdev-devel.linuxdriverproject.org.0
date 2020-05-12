Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DEAF1CF8F2
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 May 2020 17:20:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1ADDB2637D;
	Tue, 12 May 2020 15:20:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 27ZFQ79G6jeB; Tue, 12 May 2020 15:20:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0A83C26423;
	Tue, 12 May 2020 15:20:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A58B1BF5DC
 for <devel@linuxdriverproject.org>; Tue, 12 May 2020 15:20:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7727B893D0
 for <devel@linuxdriverproject.org>; Tue, 12 May 2020 15:20:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WVYyksWhF7+9 for <devel@linuxdriverproject.org>;
 Tue, 12 May 2020 15:20:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-eopbgr680053.outbound.protection.outlook.com [40.107.68.53])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3BA278937D
 for <devel@driverdev.osuosl.org>; Tue, 12 May 2020 15:20:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IfzbvjdmsAeG3sofhSptv0CZHJQRGU6N+bsYxJ02twj0im/R6CdSquGcjT4eseE80/8LfbdtgdrV/jzOf6X8EDE213nmnxTziDqSscsbX6n76rnVqEm4XMHlifY8Vz175d1cAhWi/Ek33jSjuqPMdt7Oy57pHLtZFEeIfo/xVNtjuhMt8T84mu1d4A3M0HWb0mZNpIrK3TnDpN30gcWeVKq+l9N02YQsPhAheCCSgVII/nj6lrIjo0Ls2Gz40Rz9bLzWWNCujA+Y5t5LuXJCG37oX8v0BWcfndtIeMaES1e/XyBAfwKrNm3i6MJfp9GUXTKZ17r/9TYZpKGqVVDcTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IExWWVHKF2XqSi+Sp12AMWU3WVMr+CLo4qZB9OwghaE=;
 b=dLvwQCxO37v7iAmh1fvS0eGmeMBOk0SXPpt0XYO6wB5rvfOo5L48ve01w9hf3o3bLxUujHN61S2RkA5eKyPDsshlKDn0mNGSjBYdWMZMg6ST2KEiVlKQ5/5nkmCrSp6F9ZPH8yympvZeByTbmnafh8FbROLRkhKVqXKj4kiAQpcfoPQgseQXTo3HW+3klZtQpaBYE6+aX6PnutuBsQh16LVekUOsS060My/K28SNB7hd7+g4mlvDLKiZPWHKlx/TyumlKKkfL2NbAvZoP3TeN0A42OnWvg7afuQ2eneF24Wv15uKS1L6XDwPP4T+Ti3tmDWHI9kvKNR5ZkzPUgZ8ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IExWWVHKF2XqSi+Sp12AMWU3WVMr+CLo4qZB9OwghaE=;
 b=pbeDTkFhY1OEwuBv8Ha8GInmmG7sSFx8a/Lk4mILIV8ZfOrEuapjscabRQZXGvLPo4KNCk8q36DQB4DRDhakn0E012x0ncwMjIzMXDMc8Pzf+DvJozxdHhgQSC+hUqupKUQ4ppfg8ijxPhABgexkMzqI5LdkYHoQM7bM6i6CzSg=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.34; Tue, 12 May
 2020 15:04:32 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da%5]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 15:04:32 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH v2 01/17] staging: wfx: fix use of cpu_to_le32 instead of
 le32_to_cpu
Date: Tue, 12 May 2020 17:03:58 +0200
Message-Id: <20200512150414.267198-2-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512150414.267198-1-Jerome.Pouiller@silabs.com>
References: <20200512150414.267198-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: DM5PR1101CA0003.namprd11.prod.outlook.com
 (2603:10b6:4:4c::13) To MWHPR11MB1775.namprd11.prod.outlook.com
 (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (82.67.86.106) by
 DM5PR1101CA0003.namprd11.prod.outlook.com (2603:10b6:4:4c::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.20 via Frontend Transport; Tue, 12 May 2020 15:04:30 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [82.67.86.106]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b02287c3-2bda-4962-42e9-08d7f685c684
X-MS-TrafficTypeDiagnostic: MWHPR11MB1741:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB174176913258633C339183DB93BE0@MWHPR11MB1741.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:595;
X-Forefront-PRVS: 0401647B7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xQ6OvbYvP0pFhC6TgMyccESL2tdL0Ivzr+ZXzysgJcH0kqxP5ITAT3cexBeRFPu/OD/se+y5zyB/TQGtCtXuNGYUin0Uxjj+H/45gsfci7CEVZxXrefE18oALg4ax2h4dD6nbmdtL7u5QFWTf3Hh7FkLwV6NZfi3siDrdvf7WMCMghf7bAtMmMbVruRS2FnNzxwdhmcK82QW4E7AWy4QQbiM4EuYD/wUJVgKhlNKqe6pRUtD8Onw/25NgHv+RwLxvkgz4HtKhr1ctNyFIcFYBkjkRWMIFuBCPMmZ6UfKzgC+cgJvkPDorElQlA5VmL4qwhSTOI6/nfu3PmCdMJqC5V+79543kTjZjgQMMZyPuGgZg4PQauRY9YOqmdPlv7QZE/pZLcV344p9PcGbJTkugz7NKWIn/3k7jKeRaPT/fLGFDWVk7zyN84rrSLQt/yt8D3sg/t3ta/mEH+W1wyftChu0UAQrqwMra1owCIlpMaZpXmGBtHturRG4XXI3zijQPiAY37HylxFt/n/dq9o7uA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(366004)(376002)(39860400002)(346002)(136003)(33430700001)(54906003)(107886003)(4744005)(478600001)(8676002)(5660300002)(316002)(1076003)(956004)(8936002)(2616005)(186003)(2906002)(7696005)(86362001)(4326008)(52116002)(6666004)(6486002)(66476007)(66574014)(26005)(66946007)(66556008)(33440700001)(16526019)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: N0TB7E3AILoSBOwuqxJEQk350MDZRhABZs4XdnLqIkEFYxzyHMtouQFlOFq4BnovWSqil9aXRuOcAfuMDmzcJxjbYY98VvY2lewn5k1FezZnEOEROPXo8BpeIlhRmHOW55VrTJDWL1bHbBNGnNOC1YS/TrkvB75rscxSjaaSb+QuUZr6PbB2EA1WMmB+8UMTN6qvEDpig0FzFtCaMzFSDojICzsUbbP/KeBgZB2bYCWydaaB3RmoZVIp2Ua3SsAwn9XXKEu7FmjMMg+H0JuAUSHn2O4xAE3ytkMsgTZxc/T8AsWvpWqTEPH8HO4/EUJIkaIuBuS6N4jiikVwzVN+dSXKnzNXcEAVr/1GPMYcNXIIvVXpEmhstEQBhrFLax4SgksBMHcj6bOXXS62jxDRPvAxrnmuDSaGPZ7t4xY3Wx8kPx2Kbxu3i9l5YRbeOPYzwCdDTPBYFd0fT9k5TESD372QEAhwVi5jmbMX6BQD7Is=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b02287c3-2bda-4962-42e9-08d7f685c684
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2020 15:04:32.0153 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +lpIHa+OS9mGijIMwbPfZUr92Ig42O0Ofp0kWg9iRLGUBY1iN9KAyADVT+gKjAjmTm2TGsuYY0g3RMLpKSCcDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1741
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKU3Bh
cnNlIGRldGVjdGVkIHRoYXQgbGUzMl90b19jcHUgc2hvdWxkIGJlIHVzZWQgaW5zdGVhZCBvZiBj
cHVfdG9fbGUzMi4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91
aWxsZXJAc2lsYWJzLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2h3aW8uYyB8IDIgKy0K
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvaHdpby5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9od2lv
LmMKaW5kZXggZDg3OGNiM2U4NGZjLi43NzcyMTdjZGY5YTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
c3RhZ2luZy93ZngvaHdpby5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaHdpby5jCkBAIC0y
MDUsNyArMjA1LDcgQEAgc3RhdGljIGludCBpbmRpcmVjdF9yZWFkMzJfbG9ja2VkKHN0cnVjdCB3
ZnhfZGV2ICp3ZGV2LCBpbnQgcmVnLAogCQlyZXR1cm4gLUVOT01FTTsKIAl3ZGV2LT5od2J1c19v
cHMtPmxvY2sod2Rldi0+aHdidXNfcHJpdik7CiAJcmV0ID0gaW5kaXJlY3RfcmVhZCh3ZGV2LCBy
ZWcsIGFkZHIsIHRtcCwgc2l6ZW9mKHUzMikpOwotCSp2YWwgPSBjcHVfdG9fbGUzMigqdG1wKTsK
KwkqdmFsID0gbGUzMl90b19jcHUoKnRtcCk7CiAJX3RyYWNlX2lvX2luZF9yZWFkMzIocmVnLCBh
ZGRyLCAqdmFsKTsKIAl3ZGV2LT5od2J1c19vcHMtPnVubG9jayh3ZGV2LT5od2J1c19wcml2KTsK
IAlrZnJlZSh0bXApOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
