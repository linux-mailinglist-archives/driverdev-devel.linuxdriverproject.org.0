Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF3F1E2855
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 May 2020 19:18:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E752987988;
	Tue, 26 May 2020 17:18:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TAVWa07Bvhkf; Tue, 26 May 2020 17:18:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2B48087942;
	Tue, 26 May 2020 17:18:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E0E9E1BF995
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 17:18:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D8C1C8798E
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 17:18:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gsgIiPyoYV74 for <devel@linuxdriverproject.org>;
 Tue, 26 May 2020 17:18:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2086.outbound.protection.outlook.com [40.107.236.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 970C187942
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 17:18:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MrYOHgfdVKHyTl9NFjKajBjJvts/yek5ccUDxkDOr9OwJc7uu2fEfA7bAV5G89qQ4GPpIF4EteKT3PQPH1KQCifZBb90s9if0pUHLz5WiNtaGA7MtPhMhojUvyykQq+p9IIIV39fsYyeldiI3jLFQBNalaJBjCaM8+d2TsPwSqxaCa/xsiWc4nD+HgsLP8JHI9OyE5WiW9JbWgrmI2MY8w1/KfIVBVyIpPW8/3poqT8HHzYTjDot/dC6tTiK0KdL7sH94kGqmkv0Um1TLq1zNQ6m528S8tEFbOFrSLeQTVrcYD++SL6qOHMLdpd/ntb2h7rP6/PN3I6hq6u5QlWQPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mmQSSAdCRES6wt7JUzUpJrFphugSWi39g4LXP/uhpZ0=;
 b=LdFvWZeCaPAzt7KGeIV7fDd4IYZIMxdRleEzMicohf0Jgl5Qg6xKLwQoj67f+t7rSXioaMEQF+YPd5XdSsDdiR/v8A8EjVma5g9mcVndGnxv+anZJasRA114CzbRdKsBAqYY5mg3NeCAg6J3+oA4sPEqQiYFRr3ewB0JGIaRGDOvy+L4Xz4eRhhCDEvl8uNe+r7YxM/Fls+2kEm3xCWrsVSAnobz1DiQsbgl+Xa11+w9fdj+Pd1Ey6soB7Z60oKmJzqddjkqNDoQj7azqaeuV54l8zNKwxz2t8IB1nDnUgPZGt94yEfCQYLLTRRxnmzzGjtcTbKySqE5Go9fSUduUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mmQSSAdCRES6wt7JUzUpJrFphugSWi39g4LXP/uhpZ0=;
 b=ckgVC8XaNPMgGWRN6QyO6dzfT4iONCEiUhqzDRvTJyw7w2TxY0LwWzdiR+Gtq341ikNTD3qF5XRXWxYLWTYZ/T4L2r7M2axxL3gGTBGhsPiipnO3dzIheLxWgYu+3iTVOQm6X7t0VA9VmCNy29csCb0fELX1D1lIYkttfuYB4lM=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2750.namprd11.prod.outlook.com (2603:10b6:805:54::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.25; Tue, 26 May
 2020 17:18:47 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::c504:2d66:a8f7:2336]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::c504:2d66:a8f7:2336%7]) with mapi id 15.20.3021.029; Tue, 26 May 2020
 17:18:47 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 04/10] staging: wfx: add support for tx_power_loop
Date: Tue, 26 May 2020 19:18:15 +0200
Message-Id: <20200526171821.934581-5-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200526171821.934581-1-Jerome.Pouiller@silabs.com>
References: <20200526171821.934581-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR1PR01CA0007.eurprd01.prod.exchangelabs.com
 (2603:10a6:102::20) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.home (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 PR1PR01CA0007.eurprd01.prod.exchangelabs.com (2603:10a6:102::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17 via Frontend
 Transport; Tue, 26 May 2020 17:18:45 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9b4a99fc-b02c-41e7-0366-08d80198d9a2
X-MS-TrafficTypeDiagnostic: SN6PR11MB2750:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB27500AAC21243778F4B6E05993B00@SN6PR11MB2750.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 041517DFAB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F4HGAkPqDXxHaDWi4gsbalIPOEg5fn9XRqBAAS1kdD2j2Nmb1J0B6pe7D4aAehxigZVxpYy+cfAlt318kWqXKdmo0rFBN8IaoRn4Lvy5vwbMHbjsIH8YDUc07uUriPdpnJxRPq/rNY+VQHgr5BqZrQBvq57xrVAJ7VCtjwWSH6Bogq2ToJ4uPJRTpKTDDUQ/fyYe09HXQqB+6jwVXNONoZy6rvPmAQ60znG3JXwq40xuvNxVM7lDSDDvWEFCoFmZOR+QR+GpIeugmodRIFL3jsEQYjbPVNmW4jwZrirRm44ZAdx3qK8aqCcJewf24W2/dXsg6wmDZD1mEB1zPYV/3A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(376002)(366004)(39860400002)(136003)(346002)(4326008)(6512007)(316002)(8676002)(8936002)(2616005)(6486002)(2906002)(107886003)(1076003)(86362001)(6666004)(186003)(16526019)(5660300002)(66574014)(36756003)(54906003)(66556008)(478600001)(8886007)(6506007)(66946007)(66476007)(52116002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 3lRm9V8wlfaYx9dHzPSU0omD7rrlArlkdFaOGLnsSIt36YUaXH1NRlF0zsR7eWmNGbW9HHRUig0a/W1CYDzCiQ/WnvbuHQN13NYIt1C8za2N/YwIQ6DPqKB2zTnb/Rv+/HEgfhXxZKD8wmYn6rRZ8b308/WUp3S3DZZb5hgz6/ImboOSEf41cCxWrBBub+7geGLhYJNrefS9iQO7UO8yyZH465fiuz0zrb1AKTcoww7LM9d2oIFdPPXudTl+7CWsVUgp0hRjYwQ8s2PbNi25q8fogdP/2BVgT8+DUlFR7p2iqKgOhiBZoqJdvxJJ+qNcpAIonO67iocyUcZGR4XqmqV/RrRdTmA5WWP7+Ry9kqXomXwplzQevvWbxU9eFaiC9hq1SwFia+T6lvrpSUjP667R8R7kc8TYis1A0DgQ3UdJTaguhGzw2GM/QSCqEcQ4+pdeDcjAqHfr9MDKEFqFJIO0T05D7cWSB04GSIEnhvErCxu8BGoBrZijjek7FeuKeLtsevDcyfKbihTXionyhBAr6MkEhAr2oJnIMj+sk9o=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b4a99fc-b02c-41e7-0366-08d80198d9a2
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2020 17:18:47.3384 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v0gXdEPNn9XKzlwTDOpTTTWuF+ItAKckr633qzBYHATMi7gBWzcBlYtA9l2GzfMM4j1qXf1K8MXtPRQYNFyEXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2750
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKRHVy
aW5nIHRoZSBjYWxpYnJhdGlvbiBvZiB0aGUgUkYgYW1wbGlmaWVyLCB0aGUgZGV2aWNlIGlzIGFi
bGUgdG8gcHJvdmlkZQpzb21lIGRhdGEgYWJvdXQgdGhlIHN0YXR1cyBvZiB0aGUgYW1wbGlmaWVy
LgoKUmVjb3JkIHRoZXNlIGRhdGEgYW5kIGV4cG9zZSB0aGVtIGluIGRlYnVnZnMuCgpTaWduZWQt
b2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Ci0t
LQogZHJpdmVycy9zdGFnaW5nL3dmeC9kZWJ1Zy5jICAgICAgICAgICB8IDI2ICsrKysrKysrKysr
KysrKysrKysrKysrKysrCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9hcGlfZ2VuZXJhbC5oIHwg
MTggKysrKysrKysrKysrKysrLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9yeC5jICAgICAg
ICAgIHwgIDcgKysrKysrKwogZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmMgICAgICAgICAgICB8
ICAyICsrCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oICAgICAgICAgICAgIHwgIDIgKysKIDUg
ZmlsZXMgY2hhbmdlZCwgNTIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RlYnVnLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2Rl
YnVnLmMKaW5kZXggZjUyZTdjZjg4NWNiYS4uMTBkNjQ5OTg1Njk2YSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9zdGFnaW5nL3dmeC9kZWJ1Zy5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvZGVidWcu
YwpAQCAtMTc4LDYgKzE3OCwzMCBAQCBzdGF0aWMgaW50IHdmeF9yeF9zdGF0c19zaG93KHN0cnVj
dCBzZXFfZmlsZSAqc2VxLCB2b2lkICp2KQogfQogREVGSU5FX1NIT1dfQVRUUklCVVRFKHdmeF9y
eF9zdGF0cyk7CiAKK3N0YXRpYyBpbnQgd2Z4X3R4X3Bvd2VyX2xvb3Bfc2hvdyhzdHJ1Y3Qgc2Vx
X2ZpbGUgKnNlcSwgdm9pZCAqdikKK3sKKwlzdHJ1Y3Qgd2Z4X2RldiAqd2RldiA9IHNlcS0+cHJp
dmF0ZTsKKwlzdHJ1Y3QgaGlmX3R4X3Bvd2VyX2xvb3BfaW5mbyAqc3QgPSAmd2Rldi0+dHhfcG93
ZXJfbG9vcF9pbmZvOworCWludCB0bXA7CisKKwltdXRleF9sb2NrKCZ3ZGV2LT50eF9wb3dlcl9s
b29wX2luZm9fbG9jayk7CisJdG1wID0gbGUxNl90b19jcHUoc3QtPnR4X2dhaW5fZGlnKTsKKwlz
ZXFfcHJpbnRmKHNlcSwgIlR4IGdhaW4gZGlnaXRhbDogJWRcbiIsIHRtcCk7CisJdG1wID0gbGUx
Nl90b19jcHUoc3QtPnR4X2dhaW5fcGEpOworCXNlcV9wcmludGYoc2VxLCAiVHggZ2FpbiBQQTog
JWRcbiIsIHRtcCk7CisJdG1wID0gKHMxNilsZTE2X3RvX2NwdShzdC0+dGFyZ2V0X3BvdXQpOwor
CXNlcV9wcmludGYoc2VxLCAiVGFyZ2V0IFBvdXQ6ICVkLiUwMmQgZEJtXG4iLCB0bXAgLyA0LCAo
dG1wICUgNCkgKiAyNSk7CisJdG1wID0gKHMxNilsZTE2X3RvX2NwdShzdC0+cF9lc3RpbWF0aW9u
KTsKKwlzZXFfcHJpbnRmKHNlcSwgIkZFTSBQb3V0OiAlZC4lMDJkIGRCbVxuIiwgdG1wIC8gNCwg
KHRtcCAlIDQpICogMjUpOworCXRtcCA9IGxlMTZfdG9fY3B1KHN0LT52cGRldCk7CisJc2VxX3By
aW50ZihzZXEsICJWcGRldDogJWQgbVZcbiIsIHRtcCk7CisJc2VxX3ByaW50ZihzZXEsICJNZWFz
dXJlIGluZGV4OiAlZFxuIiwgc3QtPm1lYXN1cmVtZW50X2luZGV4KTsKKwltdXRleF91bmxvY2so
JndkZXYtPnR4X3Bvd2VyX2xvb3BfaW5mb19sb2NrKTsKKworCXJldHVybiAwOworfQorREVGSU5F
X1NIT1dfQVRUUklCVVRFKHdmeF90eF9wb3dlcl9sb29wKTsKKwogc3RhdGljIHNzaXplX3Qgd2Z4
X3NlbmRfcGRzX3dyaXRlKHN0cnVjdCBmaWxlICpmaWxlLAogCQkJCSAgY29uc3QgY2hhciBfX3Vz
ZXIgKnVzZXJfYnVmLAogCQkJCSAgc2l6ZV90IGNvdW50LCBsb2ZmX3QgKnBwb3MpCkBAIC0zMTcs
NiArMzQxLDggQEAgaW50IHdmeF9kZWJ1Z19pbml0KHN0cnVjdCB3ZnhfZGV2ICp3ZGV2KQogCWQg
PSBkZWJ1Z2ZzX2NyZWF0ZV9kaXIoIndmeCIsIHdkZXYtPmh3LT53aXBoeS0+ZGVidWdmc2Rpcik7
CiAJZGVidWdmc19jcmVhdGVfZmlsZSgiY291bnRlcnMiLCAwNDQ0LCBkLCB3ZGV2LCAmd2Z4X2Nv
dW50ZXJzX2ZvcHMpOwogCWRlYnVnZnNfY3JlYXRlX2ZpbGUoInJ4X3N0YXRzIiwgMDQ0NCwgZCwg
d2RldiwgJndmeF9yeF9zdGF0c19mb3BzKTsKKwlkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJ0eF9wb3dl
cl9sb29wIiwgMDQ0NCwgZCwgd2RldiwKKwkJCSAgICAmd2Z4X3R4X3Bvd2VyX2xvb3BfZm9wcyk7
CiAJZGVidWdmc19jcmVhdGVfZmlsZSgic2VuZF9wZHMiLCAwMjAwLCBkLCB3ZGV2LCAmd2Z4X3Nl
bmRfcGRzX2ZvcHMpOwogCWRlYnVnZnNfY3JlYXRlX2ZpbGUoImJ1cm5fc2xrX2tleSIsIDAyMDAs
IGQsIHdkZXYsCiAJCQkgICAgJndmeF9idXJuX3Nsa19rZXlfZm9wcyk7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9hcGlfZ2VuZXJhbC5oIGIvZHJpdmVycy9zdGFnaW5nL3dm
eC9oaWZfYXBpX2dlbmVyYWwuaAppbmRleCBmNWFiZDgxNzQ3MDY5Li5kYmExOGE3YWU5MTk0IDEw
MDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9hcGlfZ2VuZXJhbC5oCisrKyBiL2Ry
aXZlcnMvc3RhZ2luZy93ZngvaGlmX2FwaV9nZW5lcmFsLmgKQEAgLTIwMSw5ICsyMDEsMTAgQEAg
c3RydWN0IGhpZl9jbmZfY29udHJvbF9ncGlvIHsKIH0gX19wYWNrZWQ7CiAKIGVudW0gaGlmX2dl
bmVyaWNfaW5kaWNhdGlvbl90eXBlIHsKLQlISUZfR0VORVJJQ19JTkRJQ0FUSU9OX1RZUEVfUkFX
ICAgICAgPSAweDAsCi0JSElGX0dFTkVSSUNfSU5ESUNBVElPTl9UWVBFX1NUUklORyAgID0gMHgx
LAotCUhJRl9HRU5FUklDX0lORElDQVRJT05fVFlQRV9SWF9TVEFUUyA9IDB4MgorCUhJRl9HRU5F
UklDX0lORElDQVRJT05fVFlQRV9SQVcgICAgICAgICAgICAgICAgPSAweDAsCisJSElGX0dFTkVS
SUNfSU5ESUNBVElPTl9UWVBFX1NUUklORyAgICAgICAgICAgICA9IDB4MSwKKwlISUZfR0VORVJJ
Q19JTkRJQ0FUSU9OX1RZUEVfUlhfU1RBVFMgICAgICAgICAgID0gMHgyLAorCUhJRl9HRU5FUklD
X0lORElDQVRJT05fVFlQRV9UWF9QT1dFUl9MT09QX0lORk8gPSAweDMsCiB9OwogCiBzdHJ1Y3Qg
aGlmX3J4X3N0YXRzIHsKQEAgLTIyMiw4ICsyMjMsMTkgQEAgc3RydWN0IGhpZl9yeF9zdGF0cyB7
CiAJczggICAgIGN1cnJlbnRfdGVtcDsKIH0gX19wYWNrZWQ7CiAKK3N0cnVjdCBoaWZfdHhfcG93
ZXJfbG9vcF9pbmZvIHsKKwlfX2xlMTYgdHhfZ2Fpbl9kaWc7CisJX19sZTE2IHR4X2dhaW5fcGE7
CisJX19sZTE2IHRhcmdldF9wb3V0OyAvLyBzaWduZWQgdmFsdWUKKwlfX2xlMTYgcF9lc3RpbWF0
aW9uOyAvLyBzaWduZWQgdmFsdWUKKwlfX2xlMTYgdnBkZXQ7CisJdTggICAgIG1lYXN1cmVtZW50
X2luZGV4OworCXU4ICAgICByZXNlcnZlZDsKK30gX19wYWNrZWQ7CisKIHVuaW9uIGhpZl9pbmRp
Y2F0aW9uX2RhdGEgewogCXN0cnVjdCBoaWZfcnhfc3RhdHMgcnhfc3RhdHM7CisJc3RydWN0IGhp
Zl90eF9wb3dlcl9sb29wX2luZm8gdHhfcG93ZXJfbG9vcF9pbmZvOwogCXU4ICAgICByYXdfZGF0
YVsxXTsKIH07CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3J4LmMgYi9k
cml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9yeC5jCmluZGV4IDg4NDY2MDYzY2M0MjcuLmJiMTU2MDMz
ZDFlMTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3J4LmMKKysrIGIvZHJp
dmVycy9zdGFnaW5nL3dmeC9oaWZfcnguYwpAQCAtMjc4LDYgKzI3OCwxMyBAQCBzdGF0aWMgaW50
IGhpZl9nZW5lcmljX2luZGljYXRpb24oc3RydWN0IHdmeF9kZXYgKndkZXYsCiAJCSAgICAgICBz
aXplb2Yod2Rldi0+cnhfc3RhdHMpKTsKIAkJbXV0ZXhfdW5sb2NrKCZ3ZGV2LT5yeF9zdGF0c19s
b2NrKTsKIAkJcmV0dXJuIDA7CisJY2FzZSBISUZfR0VORVJJQ19JTkRJQ0FUSU9OX1RZUEVfVFhf
UE9XRVJfTE9PUF9JTkZPOgorCQltdXRleF9sb2NrKCZ3ZGV2LT50eF9wb3dlcl9sb29wX2luZm9f
bG9jayk7CisJCW1lbWNweSgmd2Rldi0+dHhfcG93ZXJfbG9vcF9pbmZvLAorCQkgICAgICAgJmJv
ZHktPmluZGljYXRpb25fZGF0YS50eF9wb3dlcl9sb29wX2luZm8sCisJCSAgICAgICBzaXplb2Yo
d2Rldi0+dHhfcG93ZXJfbG9vcF9pbmZvKSk7CisJCW11dGV4X3VubG9jaygmd2Rldi0+dHhfcG93
ZXJfbG9vcF9pbmZvX2xvY2spOworCQlyZXR1cm4gMDsKIAlkZWZhdWx0OgogCQlkZXZfZXJyKHdk
ZXYtPmRldiwgImdlbmVyaWNfaW5kaWNhdGlvbjogdW5rbm93biBpbmRpY2F0aW9uIHR5cGU6ICUj
Ljh4XG4iLAogCQkJdHlwZSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4u
YyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jCmluZGV4IGFlMjNhNTZmNTBlMDUuLjZiZDk2
ZjQ3NjM4ODQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jCisrKyBiL2Ry
aXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jCkBAIC0yNzQsNiArMjc0LDcgQEAgc3RhdGljIHZvaWQg
d2Z4X2ZyZWVfY29tbW9uKHZvaWQgKmRhdGEpCiB7CiAJc3RydWN0IHdmeF9kZXYgKndkZXYgPSBk
YXRhOwogCisJbXV0ZXhfZGVzdHJveSgmd2Rldi0+dHhfcG93ZXJfbG9vcF9pbmZvX2xvY2spOwog
CW11dGV4X2Rlc3Ryb3koJndkZXYtPnJ4X3N0YXRzX2xvY2spOwogCW11dGV4X2Rlc3Ryb3koJndk
ZXYtPmNvbmZfbXV0ZXgpOwogCWllZWU4MDIxMV9mcmVlX2h3KHdkZXYtPmh3KTsKQEAgLTM0NCw2
ICszNDUsNyBAQCBzdHJ1Y3Qgd2Z4X2RldiAqd2Z4X2luaXRfY29tbW9uKHN0cnVjdCBkZXZpY2Ug
KmRldiwKIAogCW11dGV4X2luaXQoJndkZXYtPmNvbmZfbXV0ZXgpOwogCW11dGV4X2luaXQoJndk
ZXYtPnJ4X3N0YXRzX2xvY2spOworCW11dGV4X2luaXQoJndkZXYtPnR4X3Bvd2VyX2xvb3BfaW5m
b19sb2NrKTsKIAlpbml0X2NvbXBsZXRpb24oJndkZXYtPmZpcm13YXJlX3JlYWR5KTsKIAlJTklU
X0RFTEFZRURfV09SSygmd2Rldi0+Y29vbGluZ190aW1lb3V0X3dvcmssCiAJCQkgIHdmeF9jb29s
aW5nX3RpbWVvdXRfd29yayk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5o
IGIvZHJpdmVycy9zdGFnaW5nL3dmeC93ZnguaAppbmRleCBjYzlmN2QxNmVlOGI3Li43M2UyMTY3
MzNjZTRmIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oCisrKyBiL2RyaXZl
cnMvc3RhZ2luZy93Zngvd2Z4LmgKQEAgLTU4LDYgKzU4LDggQEAgc3RydWN0IHdmeF9kZXYgewog
CiAJc3RydWN0IGhpZl9yeF9zdGF0cwlyeF9zdGF0czsKIAlzdHJ1Y3QgbXV0ZXgJCXJ4X3N0YXRz
X2xvY2s7CisJc3RydWN0IGhpZl90eF9wb3dlcl9sb29wX2luZm8gdHhfcG93ZXJfbG9vcF9pbmZv
OworCXN0cnVjdCBtdXRleAkJdHhfcG93ZXJfbG9vcF9pbmZvX2xvY2s7CiB9OwogCiBzdHJ1Y3Qg
d2Z4X3ZpZiB7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
