Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E7F1CF8E2
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 May 2020 17:20:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F3B06893EA;
	Tue, 12 May 2020 15:20:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RlGC8euJ+LFy; Tue, 12 May 2020 15:20:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 991FE8937D;
	Tue, 12 May 2020 15:20:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5CDA91BF5DC
 for <devel@linuxdriverproject.org>; Tue, 12 May 2020 15:20:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 425E8264B4
 for <devel@linuxdriverproject.org>; Tue, 12 May 2020 15:20:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FjEO660WNjpR for <devel@linuxdriverproject.org>;
 Tue, 12 May 2020 15:20:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-eopbgr680070.outbound.protection.outlook.com [40.107.68.70])
 by silver.osuosl.org (Postfix) with ESMTPS id 8A1D9262A6
 for <devel@driverdev.osuosl.org>; Tue, 12 May 2020 15:20:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jovbiyyYnjX5sfVYc+dEr//WQIl+JDGIA4gRPGTlX3hBxxeuJmoCDSqMPue18S60CNPnFJEEyMm/1hTyfOkF/pbS3cjyv68sRevYREY9Wd9H3b6B/MB/HXDBMh9Tt70WPUahzNZi40eYLP05sOeX1yujOuGGYVT9GeWwRHM81Zgk7GMdnKfsuxywyGhU8hDoaTVy6oaaeE5TlAZgdZHCMkNDwUOJRS9pvXnRSGKg6nHmchCsO0HnY504IaofEXOKMlaEkFzQ5vJDmeGsYsljMyzV6CZd3j7kFMme+HsFTm0rUcZfA7u+4zsltRw1Npy0wCIAdOrZt2TXJeKpWDposg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NkzghTDCsqoKkN2RTocV98XMJiCXurzeGJcUFs2XUWs=;
 b=oI/DhH4fBt3A4e7oWC1BLu1KntnSyvisNHV7S63/qEtc+PZvdUGZFO6xAfovJcmlO2R31NoqvFlptbLemDJppAnFnQXQ2IUrR/zrk5xdEQ5rFt2BeUgIPQ1Qjm+80Sg36NQBuFtPVRM1qkgBwlCPdOXFSJSFxUHCU+S48voiuEtO33amXCtS/H6cz1J9nGVBSVSESkf0veNmN8pwvTsgRY6LwVgGLEw2+i9G+V30XpPvzNhJ61HFt4XcndQhdNDY2oUh3yD0NGF+DTZnYs0fae4/gGBFJ1EVMRpZBiHlvcOl1qd4SdTj7iQ5Vasxiz+cIgz8wwkRFl2AMmZZb7YHkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NkzghTDCsqoKkN2RTocV98XMJiCXurzeGJcUFs2XUWs=;
 b=AEnYhqK4DBGRg/uTwYAfuNtRJxLeTXExhSzx89YPt6RauDmLVwC+5UKzllQRMmfgyXzBBwGsidqxAFjHMVPJnMqzVDFbiKgQzympzmypD7tkWcU2PgeCT0XIpH85R+Rk/qmOJVWR1AGPt5je43zFegbrG8/9f68QGidf8AAbU10=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.34; Tue, 12 May
 2020 15:04:50 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da%5]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 15:04:49 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH v2 10/17] staging: wfx: fix access to le32 attribute
 'indication_type'
Date: Tue, 12 May 2020 17:04:07 +0200
Message-Id: <20200512150414.267198-11-Jerome.Pouiller@silabs.com>
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
 15.20.3000.20 via Frontend Transport; Tue, 12 May 2020 15:04:48 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [82.67.86.106]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 82900a7d-de16-4419-2c2b-08d7f685d119
X-MS-TrafficTypeDiagnostic: MWHPR11MB1741:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB174102E26B5363A59BA6E68B93BE0@MWHPR11MB1741.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1850;
X-Forefront-PRVS: 0401647B7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ykHRJvZi+fA41GeTeBJDXNuc/Aa55qljNtlGPKCfAjIWfpyihDrRa/9xaK6I7suWEn7pDFnlEIxsOP9OcaPsr5B50OcMQPPMj6Q6wlJ9bW1nYBIx0F0xgPcSTSfUtJiyxfPKuFK4LPd1wkAcUOI6BgyQKFNgS/QONiqjdwXV60yGOUwPw4DImkQ6sT4P2EYP9iNOPKNMtSZGjZhqXhPVMnBmyCN2Tui/NA1pVVDVGSlEsJ6ChOeFXkrGRQwP0AFkOtjzGZMzsPFUL9OPPEPfKoYX004rfhPCQN8s/hIFHfygpCxhGUQVJ/+ei0iVyqOwxAYVGRy69tAJbRtMAflIOksJrYDRK+qdiYyZ4570BQneWc4pPvjTmXyLUPhVJq4SGGkcTXvXOR3MBBX//8IxtbrVmL3xOd4DHoQJwWej1Qjm/Q15HyCK7CYnkNexRj/vu/oWwU+lZEP/heomhll3ewRhsDRQcHW6JRSWKrKE1RpKM3lyZO4xdm7Rex6zAZkBEZEv6D3npD4zVshD3DRuJg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(366004)(376002)(39860400002)(346002)(136003)(33430700001)(54906003)(107886003)(478600001)(8676002)(5660300002)(316002)(1076003)(956004)(8936002)(2616005)(186003)(2906002)(7696005)(86362001)(4326008)(52116002)(6666004)(6486002)(66476007)(66574014)(26005)(66946007)(66556008)(33440700001)(16526019)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: P1hWNEBheIbnM4DdqREeXk8+XyWj911gwggpmE0k6HVf/8m5/FpqJ6UqMwUnB1+m9I4UhjZwz3D3lEnkEzOfVoPHMm8DKXZckVLXsg3Ud975MSKAlvtjv+UnFhSm/DBGMJDfj4pcP0992JHOdBGQx7VRrmAmIzV0gqnnBQReBLG3nDB3W3cHHEOBmT9Z7iHbf26iMmDDeycw68wQ8yZa9Yx/FIIZ5CyOqbkhp6IVZQ9ZXkcI4lKFeIqMobt1e6cHeEPwNGuxuCdjcyskkkfs8nNAlGJxZriXmJ7yI5TGNatsVv7YxOSe+w0kpdUIDD241bTdPa4vzgHfJOGH3rN/w16CaLAaahYjMkgtMs4wVg/le1/mvFg6KhN/aR2rH7lZ4LYTCYo/SCQS1QL8TOE5dyDqPiELOlMahyX2IbLIdcR3CNpip4MmtFUNQXNJZayIxjfltLzQQQxpYgCzBE+O6og2w//dmNMBV+mutKWbknE=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82900a7d-de16-4419-2c2b-08d7f685d119
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2020 15:04:49.8114 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f9RzM5UTtVWsTF2vJzOGXpMOmWDmH7R7Kq9Vi4FXKbbk74KmRhbpP+YJ3dVwfNkaO2ScoTN+R76JIRLmcPduAw==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhl
IGF0dHJpYnV0ZSBpbmRpY2F0aW9uX3R5cGUgaXMgbGl0dGxlLWVuZGlhbi4gV2UgaGF2ZSB0byB0
YWtlIHRvIHRoZQplbmRpYW5uZXNzIHdoZW4gd2UgYWNjZXNzIGl0LgoKU2lnbmVkLW9mZi1ieTog
SsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgotLS0KIGRyaXZl
cnMvc3RhZ2luZy93ZngvaGlmX3J4LmMgfCA4ICsrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2lu
Zy93ZngvaGlmX3J4LmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9yeC5jCmluZGV4IDk2NjMx
NWVkYmFiOC4uZmNhOWRmNjIwYWQ5IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hp
Zl9yeC5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3J4LmMKQEAgLTI1OSw4ICsyNTks
OSBAQCBzdGF0aWMgaW50IGhpZl9nZW5lcmljX2luZGljYXRpb24oc3RydWN0IHdmeF9kZXYgKndk
ZXYsCiAJCQkJICBjb25zdCBzdHJ1Y3QgaGlmX21zZyAqaGlmLCBjb25zdCB2b2lkICpidWYpCiB7
CiAJY29uc3Qgc3RydWN0IGhpZl9pbmRfZ2VuZXJpYyAqYm9keSA9IGJ1ZjsKKwlpbnQgdHlwZSA9
IGxlMzJfdG9fY3B1KGJvZHktPmluZGljYXRpb25fdHlwZSk7CiAKLQlzd2l0Y2ggKGJvZHktPmlu
ZGljYXRpb25fdHlwZSkgeworCXN3aXRjaCAodHlwZSkgewogCWNhc2UgSElGX0dFTkVSSUNfSU5E
SUNBVElPTl9UWVBFX1JBVzoKIAkJcmV0dXJuIDA7CiAJY2FzZSBISUZfR0VORVJJQ19JTkRJQ0FU
SU9OX1RZUEVfU1RSSU5HOgpAQCAtMjc4LDkgKzI3OSw4IEBAIHN0YXRpYyBpbnQgaGlmX2dlbmVy
aWNfaW5kaWNhdGlvbihzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwKIAkJbXV0ZXhfdW5sb2NrKCZ3ZGV2
LT5yeF9zdGF0c19sb2NrKTsKIAkJcmV0dXJuIDA7CiAJZGVmYXVsdDoKLQkJZGV2X2Vycih3ZGV2
LT5kZXYsCi0JCQkiZ2VuZXJpY19pbmRpY2F0aW9uOiB1bmtub3duIGluZGljYXRpb24gdHlwZTog
JSMuOHhcbiIsCi0JCQlib2R5LT5pbmRpY2F0aW9uX3R5cGUpOworCQlkZXZfZXJyKHdkZXYtPmRl
diwgImdlbmVyaWNfaW5kaWNhdGlvbjogdW5rbm93biBpbmRpY2F0aW9uIHR5cGU6ICUjLjh4XG4i
LAorCQkJdHlwZSk7CiAJCXJldHVybiAtRUlPOwogCX0KIH0KLS0gCjIuMjYuMgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
