Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2A725F784
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Sep 2020 12:16:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F010D87101;
	Mon,  7 Sep 2020 10:15:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OMKyP+13hkP1; Mon,  7 Sep 2020 10:15:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 04CB487108;
	Mon,  7 Sep 2020 10:15:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9289F1BF2FD
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 10:15:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8E38985EC0
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 10:15:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gs30AviXAGWR for <devel@linuxdriverproject.org>;
 Mon,  7 Sep 2020 10:15:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2042.outbound.protection.outlook.com [40.107.223.42])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DE4A185EAF
 for <devel@driverdev.osuosl.org>; Mon,  7 Sep 2020 10:15:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dmL8SWWwqjaMrDKnd6YA1xZThJryV8HikT8LW2Po1WumMoaDX52muoZv+Gsu8v3+aQGtVsUETAHZrSRNrVl1bAZY+9Y+vmsVdki+xNok/sZOp6TbDMIRevFC5fZJLNYItuGFsMpFswCQl/jy6yKayHm6lXaL088g5HkyA7CpULCuUNduzMuQ0sA3sCRstD3Qd7GMp2EeFHGkj0v+R2M8IgJyVGVgKNk56xzeiwJdGYTh5a2V+mouDvHuy2rw1dBm2MrNgtYxvUdeQGCVv8nuEArNfJ5dt4a+Ed30N7xYDxDIR/R1XmfNMhT9U21mf0WnlvN8qMtyqFzoz+sMyTlc/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wOD31//WcA9Sg/GT3nVtbmqC+EjugKLWOFvDfKa1KTA=;
 b=djwJihYjwNncWZilXJvtChpkvzXzFPp2QGIxyqHnF87Ae7RmEh0q8bYq0d16gqWS2urNz7vfbCnS+W/Bo9w3DiNSwp24BEjF14fwHV8ymoL6bUWJWZv1fPpi2ruZdHrCf1LUfI6K0f5xnkET2SglocH4LE/kloEv9lpxDftI5M++ipRbJd1W2gxDetTOj5RvbIsymHO5g21+RqrtdqBRJNQy+1bDeC878nTAfDow0+o0y0D0muzrrMCg3Nq9VXGzM5oo8hgtjyNT1Qg3vKNvt0g6bez6M3OgD8XNua/TvLQ3+Ex4awUm++4P7MKR9kyCZdm1o7vxaYVkQZjsM/5hNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wOD31//WcA9Sg/GT3nVtbmqC+EjugKLWOFvDfKa1KTA=;
 b=MuFxKQ9I3OlKBBdareiAVw6NLKkNOLqzecLs02lySv41jAjPiNfjae9W0Q99D1sjQeOctx/nR0BXnorQZl3eUZHJb2ZEr2nUBU0Z0tlnEEIEy7TXoFl9oMwMIKO6cTEaLFJwyzbENiMOVUZmU2dJ9IrUUJ/xUibgkC8fwtA5pkM=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2606.namprd11.prod.outlook.com (2603:10b6:805:55::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.17; Mon, 7 Sep
 2020 10:15:52 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6%4]) with mapi id 15.20.3348.019; Mon, 7 Sep 2020
 10:15:52 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 05/31] staging: wfx: drop 'secure link' feature
Date: Mon,  7 Sep 2020 12:14:55 +0200
Message-Id: <20200907101521.66082-6-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200907101521.66082-1-Jerome.Pouiller@silabs.com>
References: <20200907101521.66082-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR0P264CA0109.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:19::25) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (37.71.187.125) by
 PR0P264CA0109.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:19::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3348.16 via Frontend Transport; Mon, 7 Sep 2020 10:15:50 +0000
X-Mailer: git-send-email 2.28.0
X-Originating-IP: [37.71.187.125]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bbe840ed-90c5-401a-b586-08d85316fff6
X-MS-TrafficTypeDiagnostic: SN6PR11MB2606:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB2606508795986385DA4D914893280@SN6PR11MB2606.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:478;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0PMAZ2Yu4zEFxX0LMlWRT9NWADWNuxwRInQODzKUVH2gkk6LNnJFNsSrrRVPnmTUFNVcJk49Srj/LkkTvfjQo7QstmAGSiEejPfAnCJqRfob+qCx5b0ATYHLmY6lA0+EcT2RRsNWNjUlP5bnQJCMQRqAwyS3xniW6kIJ19G76geL44x3aUF0Nem3vxvZx7zmH4AXa6dU3CaSCf5oCTDjUaZ/5zVnzf9khESaLnFhBR0ZzEdwPf7umF5qPWNVRqEbl0qkBDz6vkmkoHDQIitL3g2Cr+RbuQihuGQ1DPF09IKaHSa0YRABGSlULzeFmatNN+EWGaixctWXGOQkATzTmQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(346002)(366004)(136003)(39850400004)(66946007)(4326008)(5660300002)(30864003)(2616005)(66476007)(316002)(956004)(478600001)(54906003)(52116002)(2906002)(66556008)(1076003)(36756003)(8676002)(86362001)(6486002)(8936002)(7696005)(66574015)(83380400001)(26005)(107886003)(16526019)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: r4Mz00zRX8ciOJi7nQMwMVvGEPJfsx28ebGYulVOxwsQW5x1OdQRF1ZW9RgIlXrfnwd8grymr0rS6Ma6gbRB1Q839VSy8QdfGcES38DFyu6lSS3mY/7tpSRfupdXlwu46umUArmu3Jb+bBsAOw24k9fu+Bscoh9JRwzG93dXKbSDOvcZq3b+A4iU7DKsX9HIui6NOl0X9XigG8EyY8PkSjZrTus6MmpV8Gtok63jK1o/rwmeTwgLyGGdE3tRHAN7kE8C4YAOjvSKCI2//EYsDT3cycMohoOKMPclkPeUz95OPwqPQDFB0kfSqHa3SLglAhSrHsGl6qgH3s+V/0njEVXLX2zioCuAC6xgIXt5rVD4HrihQBusguRS/tncUbrU1n57QUs03YFbqVo9Jg33fc78RJ7gMpHtFWnuzEQA6nJOE8QkH8n0MDWaEenjeUcdFNSDxSjHoOHr7Z1aB/S8AWjrgNkqqRturs7Nv6vxO1imlVlr6p2BCmgFY7CfwRsUBHyFMrb1QH3zzzeSYb+fIYXGvYmqCxdVDDSBDqvLcaJp0IN6qBlZd+4vi2Tu6+34XMAUvTuFVbdP6Xs0IsLmlwfqpiBYYZGD5Ooz5MT48plDyDTqKaNi+i3FVLmHXn5QjHT1yGXKPiYCpm/ew4TE4g==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbe840ed-90c5-401a-b586-08d85316fff6
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2020 10:15:52.3728 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k17Wfjl0hY5jb5w80AbpIrcPaonkwazYAMAvANyjvX7Gl8JnwCbSjbqtJzxLX5rbr34BKQcRXu4PYj9duX3Z2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2606
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhl
IFNlY3VyZSBMaW5rIChzbGspIGZlYXR1cmUgYWxsb3dzIHRvIGVuY3J5cHQgKGFuZCBhdXRoZW50
aWNhdGUpIHRoZQp0cmFmZmljIGJldHdlZW4gdGhlIGhvc3QgYW5kIHRoZSBkZXZpY2UuIFRoZSBv
ZmZpY2lhbCBpbXBsZW1lbnRhdGlvbiBvZgp0aGlzIGZlYXR1cmUgcmVsaWVzIG9uIG1iZWRUTFMu
IEZvciB0aGF0IHJlYXNvbiwgdGhpcyBpbXBsZW1lbnRhdGlvbiBpcwpub3QgaW5jbHVkZWQgaW4g
dGhlIGN1cnJlbnQgZHJpdmVyLiBUbyBiZSBpbmNsdWRlZCwgdGhlIGltcGxlbWVudGF0aW9uCmhh
cyB0byByZWx5IG9uIGtlcm5lbCBjcnlwdG8gQVBJIGluc3RlYWQgb2YgbWJlZFRMUy4KClNvLCBm
b3Igbm93LCB0aGUgZHJpdmVyIGNvbnRhaW5lZCBzdHViIGZ1bmN0aW9ucyB3YWl0aW5nIGZvciB0
aGUgbmV3CmltcGxlbWVudGF0aW9uIGJhc2VkIG9uIGtlcm5lbCBjcnlwdG8gQVBJLgoKVGhpcyBu
ZXcgaW1wbGVtZW50YXRpb24gcmVwcmVzZW50IGEgYnVuY2ggb2Ygd29yayBhbmQgaXQgaXMgdW5s
aWtlbHkgdG8KYmUgZG9uZSBpbiBuZWFyIGZ1dHVyZS4gIE1vcmVvdmVyLCB3ZSBzdHJvbmdseSBk
aXNsaWtlIHRvIG1haW50YWluCnVzZWxlc3MgY29kZS4gU28sIGRyb3AgYWxsIHRoZSBjb2RlIHJl
bGF0ZWQgdG8gc2VjdXJlIGxpbmsuCgpXaG9ldmVyIHdhbnRzIHRvIGltcGxlbWVudCBzZWN1cmUg
bGluayBzaG91bGQgcmV2ZXJ0IHRoaXMgcGF0Y2ggYmVmb3JlCnN0YXJ0aW5nIHRvIHdvcmsgb24g
aXQuCgpTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNp
bGFicy5jb20+Ci0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9iaC5jICAgICAgICAgICAgICB8IDQ4
ICsrLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvaGlmX2FwaV9nZW5lcmFsLmgg
fCA4MCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvaGlm
X3J4LmMgICAgICAgICAgfCAxOSAtLS0tLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eC5j
ICAgICAgICAgIHwgNjYgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9zdGFnaW5nL3dm
eC9oaWZfdHguaCAgICAgICAgICB8ICA2IC0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYyAg
ICAgICAgICAgIHwgIDkgKy0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3NlY3VyZV9saW5rLmggICAg
IHwgNTkgLS0tLS0tLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvc3RhZ2luZy93Zngvd2Z4LmggICAg
ICAgICAgICAgfCAgMiAtCiA4IGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMjgxIGRl
bGV0aW9ucygtKQogZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy93Zngvc2VjdXJl
X2xpbmsuaAoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvYmguYyBiL2RyaXZlcnMv
c3RhZ2luZy93ZngvYmguYwppbmRleCBmMDdiY2VlNTBlM2YuLjcyZGEyZjRhZjQ5ZiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9iaC5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93Zngv
YmguYwpAQCAtMTIsNyArMTIsNiBAQAogI2luY2x1ZGUgIndmeC5oIgogI2luY2x1ZGUgImh3aW8u
aCIKICNpbmNsdWRlICJ0cmFjZXMuaCIKLSNpbmNsdWRlICJzZWN1cmVfbGluay5oIgogI2luY2x1
ZGUgImhpZl9yeC5oIgogI2luY2x1ZGUgImhpZl9hcGlfY21kLmgiCiAKQEAgLTg4LDIwICs4Nywx
MSBAQCBzdGF0aWMgaW50IHJ4X2hlbHBlcihzdHJ1Y3Qgd2Z4X2RldiAqd2Rldiwgc2l6ZV90IHJl
YWRfbGVuLCBpbnQgKmlzX2NuZikKIAlfdHJhY2VfcGlnZ3liYWNrKHBpZ2d5YmFjaywgZmFsc2Up
OwogCiAJaGlmID0gKHN0cnVjdCBoaWZfbXNnICopc2tiLT5kYXRhOwotCVdBUk4oaGlmLT5lbmNy
eXB0ZWQgJiAweDEsICJ1bnN1cHBvcnRlZCBlbmNyeXB0aW9uIHR5cGUiKTsKLQlpZiAoaGlmLT5l
bmNyeXB0ZWQgPT0gMHgyKSB7Ci0JCWlmIChXQVJOKHJlYWRfbGVuIDwgc2l6ZW9mKHN0cnVjdCBo
aWZfc2xfbXNnKSwgImNvcnJ1cHRlZCByZWFkIikpCi0JCQlnb3RvIGVycjsKLQkJY29tcHV0ZWRf
bGVuID0gbGUxNl90b19jcHUoKChzdHJ1Y3QgaGlmX3NsX21zZyAqKWhpZiktPmxlbik7Ci0JCWNv
bXB1dGVkX2xlbiA9IHJvdW5kX3VwKGNvbXB1dGVkX2xlbiAtIHNpemVvZih1MTYpLCAxNik7Ci0J
CWNvbXB1dGVkX2xlbiArPSBzaXplb2Yoc3RydWN0IGhpZl9zbF9tc2cpOwotCQljb21wdXRlZF9s
ZW4gKz0gc2l6ZW9mKHN0cnVjdCBoaWZfc2xfdGFnKTsKLQl9IGVsc2UgewotCQlpZiAoV0FSTihy
ZWFkX2xlbiA8IHNpemVvZihzdHJ1Y3QgaGlmX21zZyksICJjb3JydXB0ZWQgcmVhZCIpKQotCQkJ
Z290byBlcnI7Ci0JCWNvbXB1dGVkX2xlbiA9IGxlMTZfdG9fY3B1KGhpZi0+bGVuKTsKLQkJY29t
cHV0ZWRfbGVuID0gcm91bmRfdXAoY29tcHV0ZWRfbGVuLCAyKTsKLQl9CisJV0FSTihoaWYtPmVu
Y3J5cHRlZCAmIDB4MywgImVuY3J5cHRpb24gaXMgdW5zdXBwb3J0ZWQiKTsKKwlpZiAoV0FSTihy
ZWFkX2xlbiA8IHNpemVvZihzdHJ1Y3QgaGlmX21zZyksICJjb3JydXB0ZWQgcmVhZCIpKQorCQln
b3RvIGVycjsKKwljb21wdXRlZF9sZW4gPSBsZTE2X3RvX2NwdShoaWYtPmxlbik7CisJY29tcHV0
ZWRfbGVuID0gcm91bmRfdXAoY29tcHV0ZWRfbGVuLCAyKTsKIAlpZiAoY29tcHV0ZWRfbGVuICE9
IHJlYWRfbGVuKSB7CiAJCWRldl9lcnIod2Rldi0+ZGV2LCAiaW5jb25zaXN0ZW50IG1lc3NhZ2Ug
bGVuZ3RoOiAlenUgIT0gJXp1XG4iLAogCQkJY29tcHV0ZWRfbGVuLCByZWFkX2xlbik7CkBAIC0x
MDksMTYgKzk5LDYgQEAgc3RhdGljIGludCByeF9oZWxwZXIoc3RydWN0IHdmeF9kZXYgKndkZXYs
IHNpemVfdCByZWFkX2xlbiwgaW50ICppc19jbmYpCiAJCQkgICAgICAgaGlmLCByZWFkX2xlbiwg
dHJ1ZSk7CiAJCWdvdG8gZXJyOwogCX0KLQlpZiAoaGlmLT5lbmNyeXB0ZWQgPT0gMHgyKSB7Ci0J
CWlmICh3Znhfc2xfZGVjb2RlKHdkZXYsIChzdHJ1Y3QgaGlmX3NsX21zZyAqKWhpZikpIHsKLQkJ
CWRldl9rZnJlZV9za2Ioc2tiKTsKLQkJCS8vIElmIGZyYW1lIHdhcyBhIGNvbmZpcm1hdGlvbiwg
ZXhwZWN0IHRyb3VibGUgaW4gbmV4dAotCQkJLy8gZXhjaGFuZ2UuIEhvd2V2ZXIsIGl0IGlzIGhh
cm1sZXNzIHRvIGZhaWwgdG8gZGVjb2RlCi0JCQkvLyBhbiBpbmRpY2F0aW9uIGZyYW1lLCBzbyB0
cnkgdG8gY29udGludWUuIEFueXdheSwKLQkJCS8vIHBpZ2d5YmFjayBpcyBwcm9iYWJseSBjb3Jy
ZWN0LgotCQkJcmV0dXJuIHBpZ2d5YmFjazsKLQkJfQotCX0KIAogCWlmICghKGhpZi0+aWQgJiBI
SUZfSURfSVNfSU5ESUNBVElPTikpIHsKIAkJKCppc19jbmYpKys7CkBAIC0xOTksMjMgKzE3OSw3
IEBAIHN0YXRpYyB2b2lkIHR4X2hlbHBlcihzdHJ1Y3Qgd2Z4X2RldiAqd2Rldiwgc3RydWN0IGhp
Zl9tc2cgKmhpZikKIAloaWYtPnNlcW51bSA9IHdkZXYtPmhpZi50eF9zZXFudW07CiAJd2Rldi0+
aGlmLnR4X3NlcW51bSA9ICh3ZGV2LT5oaWYudHhfc2VxbnVtICsgMSkgJSAoSElGX0NPVU5URVJf
TUFYICsgMSk7CiAKLQlpZiAod2Z4X2lzX3NlY3VyZV9jb21tYW5kKHdkZXYsIGhpZi0+aWQpKSB7
Ci0JCWxlbiA9IHJvdW5kX3VwKGxlbiAtIHNpemVvZihoaWYtPmxlbiksIDE2KSArIHNpemVvZiho
aWYtPmxlbikgKwotCQkJc2l6ZW9mKHN0cnVjdCBoaWZfc2xfbXNnX2hkcikgKwotCQkJc2l6ZW9m
KHN0cnVjdCBoaWZfc2xfdGFnKTsKLQkJLy8gQUVTIHN1cHBvcnQgZW5jcnlwdGlvbiBpbi1wbGFj
ZS4gSG93ZXZlciwgbWFjODAyMTEgYWNjZXNzIHRvCi0JCS8vIDgwMi4xMSBoZWFkZXIgYWZ0ZXIg
ZnJhbWUgd2FzIHNlbnQgKHRvIGdldCBNQUMgYWRkcmVzc2VzKS4KLQkJLy8gU28sIGtlZXAgb3Jp
Z2luIGJ1ZmZlciBjbGVhci4KLQkJZGF0YSA9IGttYWxsb2MobGVuLCBHRlBfS0VSTkVMKTsKLQkJ
aWYgKCFkYXRhKQotCQkJZ290byBlbmQ7Ci0JCWlzX2VuY3J5cHRlZCA9IHRydWU7Ci0JCXJldCA9
IHdmeF9zbF9lbmNvZGUod2RldiwgaGlmLCBkYXRhKTsKLQkJaWYgKHJldCkKLQkJCWdvdG8gZW5k
OwotCX0gZWxzZSB7Ci0JCWRhdGEgPSBoaWY7Ci0JfQorCWRhdGEgPSBoaWY7CiAJV0FSTihsZW4g
PiB3ZGV2LT5od19jYXBzLnNpemVfaW5wX2NoX2J1ZiwKIAkgICAgICIlczogcmVxdWVzdCBleGNl
ZWQgV0Z4IGNhcGFiaWxpdHk6ICV6dSA+ICVkXG4iLCBfX2Z1bmNfXywKIAkgICAgIGxlbiwgd2Rl
di0+aHdfY2Fwcy5zaXplX2lucF9jaF9idWYpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L3dmeC9oaWZfYXBpX2dlbmVyYWwuaCBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX2FwaV9nZW5l
cmFsLmgKaW5kZXggNzkxZDczNzViZDdmLi4wZGMxMzE3NmEwNWUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvc3RhZ2luZy93ZngvaGlmX2FwaV9nZW5lcmFsLmgKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dm
eC9oaWZfYXBpX2dlbmVyYWwuaApAQCAtMjgyLDg0ICsyODIsNCBAQCBlbnVtIGhpZl9zZWN1cmVf
bGlua19zdGF0ZSB7CiAJU0VDX0xJTktfRU5GT1JDRUQgICAgPSAweDMKIH07CiAKLWVudW0gaGlm
X3NsX2VuY3J5cHRpb25fdHlwZSB7Ci0JTk9fRU5DUllQVElPTiA9IDAsCi0JVFhfRU5DUllQVElP
TiA9IDEsCi0JUlhfRU5DUllQVElPTiA9IDIsCi0JSFBfRU5DUllQVElPTiA9IDMKLX07Ci0KLXN0
cnVjdCBoaWZfc2xfbXNnX2hkciB7Ci0JdTMyICAgIHNlcW51bTozMDsKLQl1MzIgICAgZW5jcnlw
dGVkOjI7Ci19IF9fcGFja2VkOwotCi1zdHJ1Y3QgaGlmX3NsX21zZyB7Ci0Jc3RydWN0IGhpZl9z
bF9tc2dfaGRyIGhkcjsKLQlfX2xlMTYgbGVuOwotCXU4ICAgICBwYXlsb2FkW107Ci19IF9fcGFj
a2VkOwotCi0jZGVmaW5lIEFFU19DQ01fVEFHX1NJWkUgICAgICAgICAgMTYKLQotc3RydWN0IGhp
Zl9zbF90YWcgewotCXU4ICAgICB0YWdbMTZdOwotfSBfX3BhY2tlZDsKLQotZW51bSBoaWZfc2xf
bWFjX2tleV9kZXN0IHsKLQlTTF9NQUNfS0VZX0RFU1RfT1RQID0gMHg3OCwKLQlTTF9NQUNfS0VZ
X0RFU1RfUkFNID0gMHg4NwotfTsKLQotI2RlZmluZSBBUElfS0VZX1ZBTFVFX1NJWkUgICAgICAg
IDMyCi0KLXN0cnVjdCBoaWZfcmVxX3NldF9zbF9tYWNfa2V5IHsKLQl1OCAgICAgb3RwX29yX3Jh
bTsKLQl1OCAgICAga2V5X3ZhbHVlW0FQSV9LRVlfVkFMVUVfU0laRV07Ci19IF9fcGFja2VkOwot
Ci1zdHJ1Y3QgaGlmX2NuZl9zZXRfc2xfbWFjX2tleSB7Ci0JX19sZTMyIHN0YXR1czsKLX0gX19w
YWNrZWQ7Ci0KLWVudW0gaGlmX3NsX3Nlc3Npb25fa2V5X2FsZyB7Ci0JSElGX1NMX0NVUlZFMjU1
MTkgPSAweDAxLAotCUhJRl9TTF9LREYgICAgICAgID0gMHgwMgotfTsKLQotI2RlZmluZSBBUElf
SE9TVF9QVUJfS0VZX1NJWkUgICAgIDMyCi0jZGVmaW5lIEFQSV9IT1NUX1BVQl9LRVlfTUFDX1NJ
WkUgNjQKLQotc3RydWN0IGhpZl9yZXFfc2xfZXhjaGFuZ2VfcHViX2tleXMgewotCXU4ICAgICBh
bGdvcml0aG06MjsKLQl1OCAgICAgcmVzZXJ2ZWQxOjY7Ci0JdTggICAgIHJlc2VydmVkMlszXTsK
LQl1OCAgICAgaG9zdF9wdWJfa2V5W0FQSV9IT1NUX1BVQl9LRVlfU0laRV07Ci0JdTggICAgIGhv
c3RfcHViX2tleV9tYWNbQVBJX0hPU1RfUFVCX0tFWV9NQUNfU0laRV07Ci19IF9fcGFja2VkOwot
Ci1zdHJ1Y3QgaGlmX2NuZl9zbF9leGNoYW5nZV9wdWJfa2V5cyB7Ci0JX19sZTMyIHN0YXR1czsK
LX0gX19wYWNrZWQ7Ci0KLSNkZWZpbmUgQVBJX05DUF9QVUJfS0VZX1NJWkUgICAgICAzMgotI2Rl
ZmluZSBBUElfTkNQX1BVQl9LRVlfTUFDX1NJWkUgIDY0Ci0KLXN0cnVjdCBoaWZfaW5kX3NsX2V4
Y2hhbmdlX3B1Yl9rZXlzIHsKLQlfX2xlMzIgc3RhdHVzOwotCXU4ICAgICBuY3BfcHViX2tleVtB
UElfTkNQX1BVQl9LRVlfU0laRV07Ci0JdTggICAgIG5jcF9wdWJfa2V5X21hY1tBUElfTkNQX1BV
Ql9LRVlfTUFDX1NJWkVdOwotfSBfX3BhY2tlZDsKLQotc3RydWN0IGhpZl9yZXFfc2xfY29uZmln
dXJlIHsKLQl1OCAgICAgZW5jcl9ibXBbMzJdOwotCXU4ICAgICBkaXNhYmxlX3Nlc3Npb25fa2V5
X3Byb3RlY3Rpb246MTsKLQl1OCAgICAgcmVzZXJ2ZWQxOjc7Ci0JdTggICAgIHJlc2VydmVkMlsz
XTsKLX0gX19wYWNrZWQ7Ci0KLXN0cnVjdCBoaWZfY25mX3NsX2NvbmZpZ3VyZSB7Ci0JX19sZTMy
IHN0YXR1czsKLX0gX19wYWNrZWQ7Ci0KICNlbmRpZgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFn
aW5nL3dmeC9oaWZfcnguYyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3J4LmMKaW5kZXggMzZi
MzkzYjkyOTM2Li5jZjdhOTU2ZWYwMGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngv
aGlmX3J4LmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfcnguYwpAQCAtMTUsNyArMTUs
NiBAQAogI2luY2x1ZGUgImJoLmgiCiAjaW5jbHVkZSAic3RhLmgiCiAjaW5jbHVkZSAiZGF0YV9y
eC5oIgotI2luY2x1ZGUgInNlY3VyZV9saW5rLmgiCiAjaW5jbHVkZSAiaGlmX2FwaV9jbWQuaCIK
IAogc3RhdGljIGludCBoaWZfZ2VuZXJpY19jb25maXJtKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LApA
QCAtNTMsOCArNTIsNiBAQCBzdGF0aWMgaW50IGhpZl9nZW5lcmljX2NvbmZpcm0oc3RydWN0IHdm
eF9kZXYgKndkZXYsCiAJfSBlbHNlIHsKIAkJd2Rldi0+aGlmX2NtZC5idWZfc2VuZCA9IE5VTEw7
CiAJCW11dGV4X3VubG9jaygmd2Rldi0+aGlmX2NtZC5sb2NrKTsKLQkJaWYgKGNtZCAhPSBISUZf
UkVRX0lEX1NMX0VYQ0hBTkdFX1BVQl9LRVlTKQotCQkJbXV0ZXhfdW5sb2NrKCZ3ZGV2LT5oaWZf
Y21kLmtleV9yZW5ld19sb2NrKTsKIAl9CiAJcmV0dXJuIHN0YXR1czsKIH0KQEAgLTExMCwyMSAr
MTA3LDYgQEAgc3RhdGljIGludCBoaWZfd2FrZXVwX2luZGljYXRpb24oc3RydWN0IHdmeF9kZXYg
KndkZXYsCiAJcmV0dXJuIDA7CiB9CiAKLXN0YXRpYyBpbnQgaGlmX2tleXNfaW5kaWNhdGlvbihz
dHJ1Y3Qgd2Z4X2RldiAqd2RldiwKLQkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaGlmX21zZyAqaGlm
LCBjb25zdCB2b2lkICpidWYpCi17Ci0JY29uc3Qgc3RydWN0IGhpZl9pbmRfc2xfZXhjaGFuZ2Vf
cHViX2tleXMgKmJvZHkgPSBidWY7Ci0JdTggcHVia2V5W0FQSV9OQ1BfUFVCX0tFWV9TSVpFXTsK
LQotCS8vIFNMX1BVQl9LRVlfRVhDSEFOR0VfU1RBVFVTX1NVQ0NFU1MgaXMgdXNlZCBieSBsZWdh
Y3kgc2VjdXJlIGxpbmsKLQlpZiAoYm9keS0+c3RhdHVzICYmIGJvZHktPnN0YXR1cyAhPSBISUZf
U1RBVFVTX1NMS19ORUdPX1NVQ0NFU1MpCi0JCWRldl93YXJuKHdkZXYtPmRldiwgInNlY3VyZSBs
aW5rIG5lZ290aWF0aW9uIGVycm9yXG4iKTsKLQltZW1jcHkocHVia2V5LCBib2R5LT5uY3BfcHVi
X2tleSwgc2l6ZW9mKHB1YmtleSkpOwotCW1lbXJldmVyc2UocHVia2V5LCBzaXplb2YocHVia2V5
KSk7Ci0Jd2Z4X3NsX2NoZWNrX3B1YmtleSh3ZGV2LCBwdWJrZXksIGJvZHktPm5jcF9wdWJfa2V5
X21hYyk7Ci0JcmV0dXJuIDA7Ci19Ci0KIHN0YXRpYyBpbnQgaGlmX3JlY2VpdmVfaW5kaWNhdGlv
bihzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwKIAkJCQkgIGNvbnN0IHN0cnVjdCBoaWZfbXNnICpoaWYs
CiAJCQkJICBjb25zdCB2b2lkICpidWYsIHN0cnVjdCBza19idWZmICpza2IpCkBAIC0zODAsNyAr
MzYyLDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB7CiAJeyBISUZfSU5EX0lEX1NFVF9QTV9NT0RF
X0NNUEwsICAgICBoaWZfcG1fbW9kZV9jb21wbGV0ZV9pbmRpY2F0aW9uIH0sCiAJeyBISUZfSU5E
X0lEX1NDQU5fQ01QTCwgICAgICAgICAgICBoaWZfc2Nhbl9jb21wbGV0ZV9pbmRpY2F0aW9uIH0s
CiAJeyBISUZfSU5EX0lEX1NVU1BFTkRfUkVTVU1FX1RYLCAgICBoaWZfc3VzcGVuZF9yZXN1bWVf
aW5kaWNhdGlvbiB9LAotCXsgSElGX0lORF9JRF9TTF9FWENIQU5HRV9QVUJfS0VZUywgaGlmX2tl
eXNfaW5kaWNhdGlvbiB9LAogCXsgSElGX0lORF9JRF9FVkVOVCwgICAgICAgICAgICAgICAgaGlm
X2V2ZW50X2luZGljYXRpb24gfSwKIAl7IEhJRl9JTkRfSURfR0VORVJJQywgICAgICAgICAgICAg
IGhpZl9nZW5lcmljX2luZGljYXRpb24gfSwKIAl7IEhJRl9JTkRfSURfRVJST1IsICAgICAgICAg
ICAgICAgIGhpZl9lcnJvcl9pbmRpY2F0aW9uIH0sCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdp
bmcvd2Z4L2hpZl90eC5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHguYwppbmRleCA2Yjg5
ZTU1ZjAzZjQuLmY5MWIxOWRkZjhlMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9o
aWZfdHguYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eC5jCkBAIC0yMCw3ICsyMCw2
IEBAIHZvaWQgd2Z4X2luaXRfaGlmX2NtZChzdHJ1Y3Qgd2Z4X2hpZl9jbWQgKmhpZl9jbWQpCiAJ
aW5pdF9jb21wbGV0aW9uKCZoaWZfY21kLT5yZWFkeSk7CiAJaW5pdF9jb21wbGV0aW9uKCZoaWZf
Y21kLT5kb25lKTsKIAltdXRleF9pbml0KCZoaWZfY21kLT5sb2NrKTsKLQltdXRleF9pbml0KCZo
aWZfY21kLT5rZXlfcmVuZXdfbG9jayk7CiB9CiAKIHN0YXRpYyB2b2lkIHdmeF9maWxsX2hlYWRl
cihzdHJ1Y3QgaGlmX21zZyAqaGlmLCBpbnQgaWZfaWQsCkBAIC02Miw5ICs2MSw2IEBAIGludCB3
ZnhfY21kX3NlbmQoc3RydWN0IHdmeF9kZXYgKndkZXYsIHN0cnVjdCBoaWZfbXNnICpyZXF1ZXN0
LAogCWlmICh3ZGV2LT5jaGlwX2Zyb3plbikKIAkJcmV0dXJuIC1FVElNRURPVVQ7CiAKLQlpZiAo
Y21kICE9IEhJRl9SRVFfSURfU0xfRVhDSEFOR0VfUFVCX0tFWVMpCi0JCW11dGV4X2xvY2soJndk
ZXYtPmhpZl9jbWQua2V5X3JlbmV3X2xvY2spOwotCiAJbXV0ZXhfbG9jaygmd2Rldi0+aGlmX2Nt
ZC5sb2NrKTsKIAlXQVJOKHdkZXYtPmhpZl9jbWQuYnVmX3NlbmQsICJkYXRhIGxvY2tpbmcgZXJy
b3IiKTsKIApAQCAtMTE4LDggKzExNCw2IEBAIGludCB3ZnhfY21kX3NlbmQoc3RydWN0IHdmeF9k
ZXYgKndkZXYsIHN0cnVjdCBoaWZfbXNnICpyZXF1ZXN0LAogCQkJICJXU00gcmVxdWVzdCAlcyVz
JXMgKCUjLjJ4KSBvbiB2aWYgJWQgcmV0dXJuZWQgc3RhdHVzICVkXG4iLAogCQkJIGdldF9oaWZf
bmFtZShjbWQpLCBtaWJfc2VwLCBtaWJfbmFtZSwgY21kLCB2aWYsIHJldCk7CiAKLQlpZiAoY21k
ICE9IEhJRl9SRVFfSURfU0xfRVhDSEFOR0VfUFVCX0tFWVMpCi0JCW11dGV4X3VubG9jaygmd2Rl
di0+aGlmX2NtZC5rZXlfcmVuZXdfbG9jayk7CiAJcmV0dXJuIHJldDsKIH0KIApAQCAtMTQ3LDcg
KzE0MSw2IEBAIGludCBoaWZfc2h1dGRvd24oc3RydWN0IHdmeF9kZXYgKndkZXYpCiAJZWxzZQog
CQljb250cm9sX3JlZ193cml0ZSh3ZGV2LCAwKTsKIAltdXRleF91bmxvY2soJndkZXYtPmhpZl9j
bWQubG9jayk7Ci0JbXV0ZXhfdW5sb2NrKCZ3ZGV2LT5oaWZfY21kLmtleV9yZW5ld19sb2NrKTsK
IAlrZnJlZShoaWYpOwogCXJldHVybiByZXQ7CiB9CkBAIC01MzUsNjIgKzUyOCwzIEBAIGludCBo
aWZfdXBkYXRlX2llX2JlYWNvbihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgY29uc3QgdTggKmllcywg
c2l6ZV90IGllc19sZW4pCiAJa2ZyZWUoaGlmKTsKIAlyZXR1cm4gcmV0OwogfQotCi1pbnQgaGlm
X3NsX3NlbmRfcHViX2tleXMoc3RydWN0IHdmeF9kZXYgKndkZXYsCi0JCQkgY29uc3QgdTggKnB1
YmtleSwgY29uc3QgdTggKnB1YmtleV9obWFjKQotewotCWludCByZXQ7Ci0Jc3RydWN0IGhpZl9t
c2cgKmhpZjsKLQlzdHJ1Y3QgaGlmX3JlcV9zbF9leGNoYW5nZV9wdWJfa2V5cyAqYm9keSA9IHdm
eF9hbGxvY19oaWYoc2l6ZW9mKCpib2R5KSwKLQkJCQkJCQkJICAmaGlmKTsKLQotCWlmICghaGlm
KQotCQlyZXR1cm4gLUVOT01FTTsKLQlib2R5LT5hbGdvcml0aG0gPSBISUZfU0xfQ1VSVkUyNTUx
OTsKLQltZW1jcHkoYm9keS0+aG9zdF9wdWJfa2V5LCBwdWJrZXksIHNpemVvZihib2R5LT5ob3N0
X3B1Yl9rZXkpKTsKLQltZW1jcHkoYm9keS0+aG9zdF9wdWJfa2V5X21hYywgcHVia2V5X2htYWMs
Ci0JICAgICAgIHNpemVvZihib2R5LT5ob3N0X3B1Yl9rZXlfbWFjKSk7Ci0Jd2Z4X2ZpbGxfaGVh
ZGVyKGhpZiwgLTEsIEhJRl9SRVFfSURfU0xfRVhDSEFOR0VfUFVCX0tFWVMsCi0JCQlzaXplb2Yo
KmJvZHkpKTsKLQlyZXQgPSB3ZnhfY21kX3NlbmQod2RldiwgaGlmLCBOVUxMLCAwLCBmYWxzZSk7
Ci0Ja2ZyZWUoaGlmKTsKLQkvLyBDb21wYXRpYmlsaXR5IHdpdGggbGVnYWN5IHNlY3VyZSBsaW5r
Ci0JaWYgKHJldCA9PSBsZTMyX3RvX2NwdShISUZfU1RBVFVTX1NMS19ORUdPX1NVQ0NFU1MpKQot
CQlyZXQgPSAwOwotCXJldHVybiByZXQ7Ci19Ci0KLWludCBoaWZfc2xfY29uZmlnKHN0cnVjdCB3
ZnhfZGV2ICp3ZGV2LCBjb25zdCB1bnNpZ25lZCBsb25nICpiaXRtYXApCi17Ci0JaW50IHJldDsK
LQlzdHJ1Y3QgaGlmX21zZyAqaGlmOwotCXN0cnVjdCBoaWZfcmVxX3NsX2NvbmZpZ3VyZSAqYm9k
eSA9IHdmeF9hbGxvY19oaWYoc2l6ZW9mKCpib2R5KSwgJmhpZik7Ci0KLQlpZiAoIWhpZikKLQkJ
cmV0dXJuIC1FTk9NRU07Ci0JbWVtY3B5KGJvZHktPmVuY3JfYm1wLCBiaXRtYXAsIHNpemVvZihi
b2R5LT5lbmNyX2JtcCkpOwotCXdmeF9maWxsX2hlYWRlcihoaWYsIC0xLCBISUZfUkVRX0lEX1NM
X0NPTkZJR1VSRSwgc2l6ZW9mKCpib2R5KSk7Ci0JcmV0ID0gd2Z4X2NtZF9zZW5kKHdkZXYsIGhp
ZiwgTlVMTCwgMCwgZmFsc2UpOwotCWtmcmVlKGhpZik7Ci0JcmV0dXJuIHJldDsKLX0KLQotaW50
IGhpZl9zbF9zZXRfbWFjX2tleShzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgY29uc3QgdTggKnNsa19r
ZXksIGludCBkZXN0aW5hdGlvbikKLXsKLQlpbnQgcmV0OwotCXN0cnVjdCBoaWZfbXNnICpoaWY7
Ci0Jc3RydWN0IGhpZl9yZXFfc2V0X3NsX21hY19rZXkgKmJvZHkgPSB3ZnhfYWxsb2NfaGlmKHNp
emVvZigqYm9keSksCi0JCQkJCQkJICAgICZoaWYpOwotCi0JaWYgKCFoaWYpCi0JCXJldHVybiAt
RU5PTUVNOwotCW1lbWNweShib2R5LT5rZXlfdmFsdWUsIHNsa19rZXksIHNpemVvZihib2R5LT5r
ZXlfdmFsdWUpKTsKLQlib2R5LT5vdHBfb3JfcmFtID0gZGVzdGluYXRpb247Ci0Jd2Z4X2ZpbGxf
aGVhZGVyKGhpZiwgLTEsIEhJRl9SRVFfSURfU0VUX1NMX01BQ19LRVksIHNpemVvZigqYm9keSkp
OwotCXJldCA9IHdmeF9jbWRfc2VuZCh3ZGV2LCBoaWYsIE5VTEwsIDAsIGZhbHNlKTsKLQlrZnJl
ZShoaWYpOwotCS8vIENvbXBhdGliaWxpdHkgd2l0aCBsZWdhY3kgc2VjdXJlIGxpbmsKLQlpZiAo
cmV0ID09IGxlMzJfdG9fY3B1KEhJRl9TVEFUVVNfU0xLX1NFVF9LRVlfU1VDQ0VTUykpCi0JCXJl
dCA9IDA7Ci0JcmV0dXJuIHJldDsKLX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngv
aGlmX3R4LmggYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eC5oCmluZGV4IGIzNzFiMzc3N2Ez
MS4uZThhY2EzOWU3NDk3IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eC5o
CisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4LmgKQEAgLTIwLDcgKzIwLDYgQEAgc3Ry
dWN0IHdmeF92aWY7CiAKIHN0cnVjdCB3ZnhfaGlmX2NtZCB7CiAJc3RydWN0IG11dGV4ICAgICAg
bG9jazsKLQlzdHJ1Y3QgbXV0ZXggICAgICBrZXlfcmVuZXdfbG9jazsKIAlzdHJ1Y3QgY29tcGxl
dGlvbiByZWFkeTsKIAlzdHJ1Y3QgY29tcGxldGlvbiBkb25lOwogCWJvb2wgICAgICAgICAgICAg
IGFzeW5jOwpAQCAtNTgsMTAgKzU3LDUgQEAgaW50IGhpZl9iZWFjb25fdHJhbnNtaXQoc3RydWN0
IHdmeF92aWYgKnd2aWYsIGJvb2wgZW5hYmxlKTsKIGludCBoaWZfbWFwX2xpbmsoc3RydWN0IHdm
eF92aWYgKnd2aWYsCiAJCSBib29sIHVubWFwLCB1OCAqbWFjX2FkZHIsIGludCBzdGFfaWQsIGJv
b2wgbWZwKTsKIGludCBoaWZfdXBkYXRlX2llX2JlYWNvbihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwg
Y29uc3QgdTggKmllcywgc2l6ZV90IGllc19sZW4pOwotaW50IGhpZl9zbF9zZXRfbWFjX2tleShz
dHJ1Y3Qgd2Z4X2RldiAqd2RldiwKLQkJICAgICAgIGNvbnN0IHU4ICpzbGtfa2V5LCBpbnQgZGVz
dGluYXRpb24pOwotaW50IGhpZl9zbF9jb25maWcoc3RydWN0IHdmeF9kZXYgKndkZXYsIGNvbnN0
IHVuc2lnbmVkIGxvbmcgKmJpdG1hcCk7Ci1pbnQgaGlmX3NsX3NlbmRfcHViX2tleXMoc3RydWN0
IHdmeF9kZXYgKndkZXYsCi0JCQkgY29uc3QgdTggKnB1YmtleSwgY29uc3QgdTggKnB1YmtleV9o
bWFjKTsKIAogI2VuZGlmCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYyBi
L2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jCmluZGV4IDVlMmI4MjQ5OTAwNC4uMmFmNDkxNGU5
MDVjIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYworKysgYi9kcml2ZXJz
L3N0YWdpbmcvd2Z4L21haW4uYwpAQCAtMzAsNyArMzAsNiBAQAogI2luY2x1ZGUgInNjYW4uaCIK
ICNpbmNsdWRlICJkZWJ1Zy5oIgogI2luY2x1ZGUgImRhdGFfdHguaCIKLSNpbmNsdWRlICJzZWN1
cmVfbGluay5oIgogI2luY2x1ZGUgImhpZl90eF9taWIuaCIKICNpbmNsdWRlICJoaWZfYXBpX2Nt
ZC5oIgogCkBAIC0yNzEsOCArMjcwLDcgQEAgc3RydWN0IHdmeF9kZXYgKndmeF9pbml0X2NvbW1v
bihzdHJ1Y3QgZGV2aWNlICpkZXYsCiAJaHctPnF1ZXVlcyA9IDQ7CiAJaHctPm1heF9yYXRlcyA9
IDg7CiAJaHctPm1heF9yYXRlX3RyaWVzID0gODsKLQlody0+ZXh0cmFfdHhfaGVhZHJvb20gPSBz
aXplb2Yoc3RydWN0IGhpZl9zbF9tc2dfaGRyKSArCi0JCQkJc2l6ZW9mKHN0cnVjdCBoaWZfbXNn
KQorCWh3LT5leHRyYV90eF9oZWFkcm9vbSA9IHNpemVvZihzdHJ1Y3QgaGlmX21zZykKIAkJCQkr
IHNpemVvZihzdHJ1Y3QgaGlmX3JlcV90eCkKIAkJCQkrIDQgLyogYWxpZ25tZW50ICovICsgOCAv
KiBUS0lQIElWICovOwogCWh3LT53aXBoeS0+aW50ZXJmYWNlX21vZGVzID0gQklUKE5MODAyMTFf
SUZUWVBFX1NUQVRJT04pIHwKQEAgLTMwOSw3ICszMDcsNiBAQCBzdHJ1Y3Qgd2Z4X2RldiAqd2Z4
X2luaXRfY29tbW9uKHN0cnVjdCBkZXZpY2UgKmRldiwKIAkJcmV0dXJuIEVSUl9DQVNUKHdkZXYt
PnBkYXRhLmdwaW9fd2FrZXVwKTsKIAlpZiAod2Rldi0+cGRhdGEuZ3Bpb193YWtldXApCiAJCWdw
aW9kX3NldF9jb25zdW1lcl9uYW1lKHdkZXYtPnBkYXRhLmdwaW9fd2FrZXVwLCAid2Z4IHdha2V1
cCIpOwotCXdmeF9zbF9maWxsX3BkYXRhKGRldiwgJndkZXYtPnBkYXRhKTsKIAogCW11dGV4X2lu
aXQoJndkZXYtPmNvbmZfbXV0ZXgpOwogCW11dGV4X2luaXQoJndkZXYtPnJ4X3N0YXRzX2xvY2sp
OwpAQCAtMzgxLDggKzM3OCw3IEBAIGludCB3ZnhfcHJvYmUoc3RydWN0IHdmeF9kZXYgKndkZXYp
CiAJCWdvdG8gZXJyMDsKIAl9CiAKLQllcnIgPSB3Znhfc2xfaW5pdCh3ZGV2KTsKLQlpZiAoZXJy
ICYmIHdkZXYtPmh3X2NhcHMuY2FwYWJpbGl0aWVzLmxpbmtfbW9kZSA9PSBTRUNfTElOS19FTkZP
UkNFRCkgeworCWlmICh3ZGV2LT5od19jYXBzLmNhcGFiaWxpdGllcy5saW5rX21vZGUgPT0gU0VD
X0xJTktfRU5GT1JDRUQpIHsKIAkJZGV2X2Vycih3ZGV2LT5kZXYsCiAJCQkiY2hpcCByZXF1aXJl
IHNlY3VyZV9saW5rLCBidXQgY2FuJ3QgbmVnb3RpYXRlIGl0XG4iKTsKIAkJZ290byBlcnIwOwpA
QCAtNDY2LDcgKzQ2Miw2IEBAIHZvaWQgd2Z4X3JlbGVhc2Uoc3RydWN0IHdmeF9kZXYgKndkZXYp
CiAJaGlmX3NodXRkb3duKHdkZXYpOwogCXdkZXYtPmh3YnVzX29wcy0+aXJxX3Vuc3Vic2NyaWJl
KHdkZXYtPmh3YnVzX3ByaXYpOwogCXdmeF9iaF91bnJlZ2lzdGVyKHdkZXYpOwotCXdmeF9zbF9k
ZWluaXQod2Rldik7CiB9CiAKIHN0YXRpYyBpbnQgX19pbml0IHdmeF9jb3JlX2luaXQodm9pZCkK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc2VjdXJlX2xpbmsuaCBiL2RyaXZlcnMv
c3RhZ2luZy93Zngvc2VjdXJlX2xpbmsuaApkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKaW5kZXgg
YzNkMDU1YjJmOGIxLi4wMDAwMDAwMDAwMDAKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9zZWN1
cmVfbGluay5oCisrKyAvZGV2L251bGwKQEAgLTEsNTkgKzAsMCBAQAotLyogU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IEdQTC0yLjAtb25seSAqLwotLyoKLSAqIENvcHlyaWdodCAoYykgMjAxOSwg
U2lsaWNvbiBMYWJvcmF0b3JpZXMsIEluYy4KLSAqLwotI2lmbmRlZiBXRlhfU0VDVVJFX0xJTktf
SAotI2RlZmluZSBXRlhfU0VDVVJFX0xJTktfSAotCi0jaW5jbHVkZSA8bGludXgvb2YuaD4KLQot
I2luY2x1ZGUgImhpZl9hcGlfZ2VuZXJhbC5oIgotCi1zdHJ1Y3Qgd2Z4X2RldjsKLQotCi1zdHJ1
Y3Qgc2xfY29udGV4dCB7Ci19OwotCi1zdGF0aWMgaW5saW5lIGJvb2wgd2Z4X2lzX3NlY3VyZV9j
b21tYW5kKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBpbnQgY21kX2lkKQotewotCXJldHVybiBmYWxz
ZTsKLX0KLQotc3RhdGljIGlubGluZSBpbnQgd2Z4X3NsX2RlY29kZShzdHJ1Y3Qgd2Z4X2RldiAq
d2Rldiwgc3RydWN0IGhpZl9zbF9tc2cgKm0pCi17Ci0JcmV0dXJuIC1FSU87Ci19Ci0KLXN0YXRp
YyBpbmxpbmUgaW50IHdmeF9zbF9lbmNvZGUoc3RydWN0IHdmeF9kZXYgKndkZXYsCi0JCQkJY29u
c3Qgc3RydWN0IGhpZl9tc2cgKmlucHV0LAotCQkJCXN0cnVjdCBoaWZfc2xfbXNnICpvdXRwdXQp
Ci17Ci0JcmV0dXJuIC1FSU87Ci19Ci0KLXN0YXRpYyBpbmxpbmUgaW50IHdmeF9zbF9jaGVja19w
dWJrZXkoc3RydWN0IHdmeF9kZXYgKndkZXYsCi0JCQkJICAgICAgY29uc3QgdTggKm5jcF9wdWJr
ZXksCi0JCQkJICAgICAgY29uc3QgdTggKm5jcF9wdWJtYWMpCi17Ci0JcmV0dXJuIC1FSU87Ci19
Ci0KLXN0YXRpYyBpbmxpbmUgdm9pZCB3Znhfc2xfZmlsbF9wZGF0YShzdHJ1Y3QgZGV2aWNlICpk
ZXYsCi0JCQkJICAgICBzdHJ1Y3Qgd2Z4X3BsYXRmb3JtX2RhdGEgKnBkYXRhKQotewotCWlmIChv
Zl9maW5kX3Byb3BlcnR5KGRldi0+b2Zfbm9kZSwgInNsa19rZXkiLCBOVUxMKSkKLQkJZGV2X2Vy
cihkZXYsICJzZWN1cmUgbGluayBpcyBub3Qgc3VwcG9ydGVkIGJ5IHRoaXMgZHJpdmVyLCBpZ25v
cmluZyBwcm92aWRlZCBrZXlcbiIpOwotfQotCi1zdGF0aWMgaW5saW5lIGludCB3Znhfc2xfaW5p
dChzdHJ1Y3Qgd2Z4X2RldiAqd2RldikKLXsKLQlyZXR1cm4gLUVJTzsKLX0KLQotc3RhdGljIGlu
bGluZSB2b2lkIHdmeF9zbF9kZWluaXQoc3RydWN0IHdmeF9kZXYgKndkZXYpCi17Ci19Ci0KLQot
I2VuZGlmCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oIGIvZHJpdmVycy9z
dGFnaW5nL3dmeC93ZnguaAppbmRleCAzOGUyNGQ3ZjcyZjIuLjI0MWVhYWY3MWY1ZSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC93ZnguaAorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4
L3dmeC5oCkBAIC0yMCw3ICsyMCw2IEBACiAjaW5jbHVkZSAiZGF0YV90eC5oIgogI2luY2x1ZGUg
Im1haW4uaCIKICNpbmNsdWRlICJxdWV1ZS5oIgotI2luY2x1ZGUgInNlY3VyZV9saW5rLmgiCiAj
aW5jbHVkZSAiaGlmX3R4LmgiCiAKICNkZWZpbmUgVVNFQ19QRVJfVFhPUCAzMiAvLyBzZWUgc3Ry
dWN0IGllZWU4MDIxMV90eF9xdWV1ZV9wYXJhbXMKQEAgLTQxLDcgKzQwLDYgQEAgc3RydWN0IHdm
eF9kZXYgewogCXN0cnVjdCBjb21wbGV0aW9uCWZpcm13YXJlX3JlYWR5OwogCXN0cnVjdCBoaWZf
aW5kX3N0YXJ0dXAJaHdfY2FwczsKIAlzdHJ1Y3Qgd2Z4X2hpZgkJaGlmOwotCXN0cnVjdCBzbF9j
b250ZXh0CXNsOwogCXN0cnVjdCBkZWxheWVkX3dvcmsJY29vbGluZ190aW1lb3V0X3dvcms7CiAJ
Ym9vbAkJCXBvbGxfaXJxOwogCWJvb2wJCQljaGlwX2Zyb3plbjsKLS0gCjIuMjguMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
