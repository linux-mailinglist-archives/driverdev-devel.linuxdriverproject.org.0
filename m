Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 212B3285D97
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Oct 2020 12:53:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8653986A77;
	Wed,  7 Oct 2020 10:53:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xEChKnfomWgj; Wed,  7 Oct 2020 10:53:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4528786A7B;
	Wed,  7 Oct 2020 10:53:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1DB891BF314
 for <devel@linuxdriverproject.org>; Wed,  7 Oct 2020 10:53:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1982486A7C
 for <devel@linuxdriverproject.org>; Wed,  7 Oct 2020 10:53:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cg7w57ALC3tj for <devel@linuxdriverproject.org>;
 Wed,  7 Oct 2020 10:53:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2072.outbound.protection.outlook.com [40.107.236.72])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0FBEC86A77
 for <devel@driverdev.osuosl.org>; Wed,  7 Oct 2020 10:53:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PbZnyzZLyPVs9NyyPd4B60/lv8Tq50LSE3B86GPdKDmOevKuTCKmPD3Wdayr5KGtgtB7TBJEd/Mw9bBtEOMw3Bv6L0l1ccl6C7jWqIV7MQ+hk2IEHSm8CJ34XjPAYala/+NWRqbawbtc/Lc0FP/eAloC8wTQgTt3O0Gw4/ZGyaZ7Tq9+vFwWxaIX5lsIQrYGTjSQ3kAOuE2R2+yPjwfqopoIskk5twQ6sV6lUUfXspWvhxHL/Pbg27EQbZlBLAqrxKqLP4Bc2N60iP1ggUt4skMuI0QFyZ8sfXl571XBmDsYNQ4sZduEzmwCrtH+r+e1OZfyIYT7sDE47kEoKo3IeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sso575kB+j7SLa/Dd5nXQDJ7x0SD/Nm74FMrrnEd+fc=;
 b=j0Q3jR2HBrI7K5bN//H3wqCvkaVvrhl4/wyITOZCZN7R4UULcUzyrofE/G+PtAcnyZkfkqRf05fHYKp0MQJErer9cPnBRp/q341i1QmEfyE1Uh2Gdg0vQkIfqo3dwwZWSC1Ur0qojZ4l1vgiTPmAaqjsq4eyVwnn7U/NWPSyeKz87aNNzdK0Qlb4xRP8HeYZJG3N4QTHxd4y9VLB872z23nZ0gbjRdP5OcaovHgJBFWc5vg93C250XGRBUtlUMylzS/m4zOcD/pA36KoEVIEP7r66nEzpOGcpqCjoE41pymEFHxtQr/V3AaI6VTC/YjbfM2i+V0CxAgPRyPUhyIJHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sso575kB+j7SLa/Dd5nXQDJ7x0SD/Nm74FMrrnEd+fc=;
 b=JUF+DPXDf/XdyBkVUOIAuMW8WB71LUlOoOKuvX45jVqL8em5m3oBWZz7BapKIJL/6A+TAY5eU2L3Uuas30ism0Z+eF+0RWRJHxmbq2VbXvQ5Fm1kO1RjXuaNKpdXUeKxvz00pHwKTgPhwAYKol1ggzH9PzuFd5lYLuAGFk/Il3Y=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4670.namprd11.prod.outlook.com (2603:10b6:806:9a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23; Wed, 7 Oct
 2020 10:20:03 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a%5]) with mapi id 15.20.3433.044; Wed, 7 Oct 2020
 10:20:03 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 0/7] wfx: move out from the staging area
Date: Wed,  7 Oct 2020 12:19:36 +0200
Message-Id: <20201007101943.749898-1-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.28.0
X-Originating-IP: [82.67.86.106]
X-ClientProxiedBy: PR0P264CA0111.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:19::27) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.home (82.67.86.106) by
 PR0P264CA0111.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:19::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.23 via Frontend Transport; Wed, 7 Oct 2020 10:20:01 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 69d3a1d5-f0f2-47b1-0335-08d86aaa8d74
X-MS-TrafficTypeDiagnostic: SA0PR11MB4670:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA0PR11MB4670E147BAC780840A00EB4B930A0@SA0PR11MB4670.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oiYD1g+1jYPNLD3M9ZAZQsk54jJPRsT6T7vICpK01N7GHQUTfA3TjlpwkoDQqqq5uyrC1IG2XxETiG0jC+oRH/7oWLJBPuWHs4oGLdDyU9Ga6mS7ljZNUE+KgPZsLKhjibxBaNubMyw0waGkwuxg8WwSCSGTBFQej+MAcFLaJSiEBcUrZ8G3ebMVbZiqFLn+VsUlZywKgJPlcvcGJ4awuAqI50zWwqODRaG/Ag+9zDnWi0O6V+F71tFjW2CRXSd78t+PMZMJ9Ei4sFaKAYuGJ4cIXR9i6Mqy56SLLn4GqcKmqAgG3VndUHoyxQsr5XkTWi8SpzlDR2NXvexGU4DabSrFzdDED1os+9Qc7IiWjV0aHR3LJTjA5sHJeKTQ6rsmHUC5luhyafsJRa3qSgCWdA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39850400004)(346002)(136003)(376002)(366004)(396003)(66556008)(66476007)(6486002)(66946007)(966005)(316002)(54906003)(4326008)(478600001)(2906002)(1076003)(5660300002)(186003)(8936002)(8676002)(16526019)(52116002)(83380400001)(26005)(6506007)(66574015)(2616005)(86362001)(956004)(83080400001)(107886003)(8886007)(36756003)(6666004)(6512007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 8Ud8A2nR5nbmRrs5fKxNuuFdwMvreQrNi7tLNDDRDCuc0TP81QPOVbOyCkZctqusxgjVlFHk9vBQmDJ+X/vsDxmL9fG/hPokC0LVesX2DQUHpOH6ZQF7bs3ZLrPIX0Lp6lCMqQnxgfkcB55Gm4v1FMrNRu7mZiYszOH9KeAsi8sofuxk6VX76wHW433DRgDIig52U2tmmskIWOdi//sVsGHa95PtQlyFbK3mFrp6yOBYeSFf3xEjW7zXIXRcbUbN/R/KOpXbp+ZzEaB0dvf1SijQR5NpOphRacc1Uv2/oVjKkv4An2zlD6Au+ECNFP8xMJNrRmoKWFROEjjyOisAU7WiQvpU2/GNr1gSiWAUIWfeF7mkON4LB+V0w5EEji9XZAWkNVzKhZvoBOecy9xv1o7qWhkEJ4ekjQlFK0U5HRyqn0GOArEwejFxX9yRvG5n+Rywv4zKhzviFGYhRllTF/ItyQx9NgNGt/fJLrw8RXnR1UTbQt5cmTtVA6OEP85XPQj8xIH4X/LlXI5Ardl0PUYI0BrwHmx1BPL+BZDK0Sv7tW9pNduy1GCC4i2XME2GUmFYj/j+4fAji3FPUq+RXKhitLHABEEZE5wRVXBHXDwZCU11+d0qN5SxYrdw2oLE7ieja9BtDRKfnXhSe+pXiA==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69d3a1d5-f0f2-47b1-0335-08d86aaa8d74
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2020 10:20:02.9456 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iRIozu1hYoo4jHtA6w5rCqOTGvuVwAiMPg3uugwQJjd8cosUFHaPGyJ76XEYb4T/IOGMmRp/C9WDXviiHhA5dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4670
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKSSB0
aGluayB0aGUgd2Z4IGRyaXZlciBpcyBub3cgbWF0dXJlIGVub3VnaCB0byBiZSBhY2NlcHRlZCBp
biB0aGUKZHJpdmVycy9uZXQvd2lyZWxlc3MgZGlyZWN0b3J5LgoKVGhlcmUgaXMgc3RpbGwgb25l
IGl0ZW0gb24gdGhlIFRPRE8gbGlzdC4gSXQgaXMgYW4gaWRlYSB0byBpbXByb3ZlIHRoZSByYXRl
CmNvbnRyb2wgaW4gc29tZSBwYXJ0aWN1bGFyIGNhc2VzWzFdLiBIb3dldmVyLCB0aGUgY3VycmVu
dCBwZXJmb3JtYW5jZXMgb2YgdGhlCmRyaXZlciBzZWVtIHRvIHNhdGlzZnkgZXZlcnlvbmUuIElu
IGFkZCwgdGhlIHN1Z2dlc3RlZCBjaGFuZ2UgaXMgbGFyZ2UgZW5vdWdoLgpTbywgSSB3b3VsZCBw
cmVmZXIgdG8gaW1wbGVtZW50IGl0IG9ubHkgaWYgaXQgcmVhbGx5IHNvbHZlcyBhbiBpc3N1ZS4g
SSB0aGluayBpdAppcyBub3QgYW4gb2JzdGFjbGUgdG8gbW92ZSB0aGUgZHJpdmVyIG91dCBvZiB0
aGUgc3RhZ2luZyBhcmVhLgoKSW4gb3JkZXIgdG8gY29tcGx5IHdpdGggdGhlIGxhc3QgcnVsZXMg
Zm9yIHRoZSBEVCBiaW5kaW5ncywgSSBoYXZlIGNvbnZlcnRlZCB0aGUKZG9jdW1lbnRhdGlvbiB0
byB5YW1sLiBJIGFtIG1vZGVyYXRlbHkgaGFwcHkgd2l0aCB0aGUgcmVzdWx0LiBFc3BlY2lhbGx5
LCBmb3IKdGhlIGRlc2NyaXB0aW9uIG9mIHRoZSBiaW5kaW5nLiBBbnkgY29tbWVudHMgYXJlIHdl
bGNvbWUuCgpUaGUgc2VyaWVzIGFsc28gdXBkYXRlIHRoZSBjb3B5cmlnaHRzIGRhdGVzIG9mIHRo
ZSBmaWxlcy4gSSBkb24ndCBrbm93IGV4YWN0bHkKaG93IHRoaXMga2luZCBvZiBjaGFuZ2VzIHNo
b3VsZCBiZSBzZW50LiBJdCdzIGEgYml0IHdlaXJkIHRvIGNoYW5nZSBhbGwgdGhlCmNvcHlyaWdo
dHMgaW4gb25lIGNvbW1pdCwgYnV0IEkgZG8gbm90IHNlZSBhbnkgYmV0dGVyIHdheS4KCkkgYWxz
byBpbmNsdWRlIGEgZmV3IGZpeGVzIEkgaGF2ZSBmb3VuZCB0aGVzZSBsYXN0IHdlZWtzLgoKWzFd
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMzA5OTU1OS5ndjNRNzVLbk4xQHBjLTQyCgpK
w6lyw7RtZSBQb3VpbGxlciAoNyk6CiAgc3RhZ2luZzogd2Z4OiBmaXggaGFuZGxpbmcgb2YgTU1J
QyBlcnJvcgogIHN0YWdpbmc6IHdmeDogcmVtb3ZlIHJlbWFpbmluZyBjb2RlIG9mICdzZWN1cmUg
bGluaycgZmVhdHVyZQogIHN0YWdpbmc6IHdmeDogZml4IEJBIHNlc3Npb25zIGZvciBvbGRlciBm
aXJtd2FyZXMKICBzdGFnaW5nOiB3Zng6IGZpeCBRb1MgcHJpb3JpdHkgZm9yIHNsb3cgYnVzZXMK
ICBzdGFnaW5nOiB3Zng6IHVwZGF0ZSBjb3B5cmlnaHRzIGRhdGVzCiAgZHQtYmluZGluZ3M6IHN0
YWdpbmc6IHdmeDogc2lsYWJzLHdmeCB5YW1sIGNvbnZlcnNpb24KICB3Zng6IG1vdmUgb3V0IGZy
b20gdGhlIHN0YWdpbmcgYXJlYQoKIC4uLi9iaW5kaW5ncy9uZXQvd2lyZWxlc3Mvc2lsYWJzLHdm
eC55YW1sICAgICB8IDEyNSArKysrKysrKysrKysrKysrKysKIE1BSU5UQUlORVJTICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9uZXQvd2lyZWxlc3Mv
S2NvbmZpZyAgICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvbmV0L3dpcmVsZXNzL01h
a2VmaWxlICAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL25ldC93aXJlbGVzcy9zaWxh
YnMvS2NvbmZpZyAgICAgICAgICAgfCAgMTcgKysrCiBkcml2ZXJzL25ldC93aXJlbGVzcy9zaWxh
YnMvTWFrZWZpbGUgICAgICAgICAgfCAgIDMgKwogLi4uL3dpcmVsZXNzL3NpbGFic30vd2Z4L0tj
b25maWcgICAgICAgICAgICAgIHwgICAwCiAuLi4vd2lyZWxlc3Mvc2lsYWJzfS93ZngvTWFrZWZp
bGUgICAgICAgICAgICAgfCAgIDAKIC4uLi97c3RhZ2luZyA9PiBuZXQvd2lyZWxlc3Mvc2lsYWJz
fS93ZngvYmguYyB8ICAgMiArLQogLi4uL3tzdGFnaW5nID0+IG5ldC93aXJlbGVzcy9zaWxhYnN9
L3dmeC9iaC5oIHwgICAyICstCiAuLi4vd2lyZWxlc3Mvc2lsYWJzfS93ZngvYnVzLmggICAgICAg
ICAgICAgICAgfCAgIDIgKy0KIC4uLi93aXJlbGVzcy9zaWxhYnN9L3dmeC9idXNfc2Rpby5jICAg
ICAgICAgICB8ICAgMiArLQogLi4uL3dpcmVsZXNzL3NpbGFic30vd2Z4L2J1c19zcGkuYyAgICAg
ICAgICAgIHwgICAyICstCiAuLi4vd2lyZWxlc3Mvc2lsYWJzfS93ZngvZGF0YV9yeC5jICAgICAg
ICAgICAgfCAgIDcgKy0KIC4uLi93aXJlbGVzcy9zaWxhYnN9L3dmeC9kYXRhX3J4LmggICAgICAg
ICAgICB8ICAgMiArLQogLi4uL3dpcmVsZXNzL3NpbGFic30vd2Z4L2RhdGFfdHguYyAgICAgICAg
ICAgIHwgICAyICstCiAuLi4vd2lyZWxlc3Mvc2lsYWJzfS93ZngvZGF0YV90eC5oICAgICAgICAg
ICAgfCAgIDIgKy0KIC4uLi93aXJlbGVzcy9zaWxhYnN9L3dmeC9kZWJ1Zy5jICAgICAgICAgICAg
ICB8ICAxOSArLS0KIC4uLi93aXJlbGVzcy9zaWxhYnN9L3dmeC9kZWJ1Zy5oICAgICAgICAgICAg
ICB8ICAgMAogLi4uL3dpcmVsZXNzL3NpbGFic30vd2Z4L2Z3aW8uYyAgICAgICAgICAgICAgIHwg
ICAyICstCiAuLi4vd2lyZWxlc3Mvc2lsYWJzfS93ZngvZndpby5oICAgICAgICAgICAgICAgfCAg
IDAKIC4uLi93aXJlbGVzcy9zaWxhYnN9L3dmeC9oaWZfYXBpX2NtZC5oICAgICAgICB8ICAgMiAr
LQogLi4uL3dpcmVsZXNzL3NpbGFic30vd2Z4L2hpZl9hcGlfZ2VuZXJhbC5oICAgIHwgICAyICst
CiAuLi4vd2lyZWxlc3Mvc2lsYWJzfS93ZngvaGlmX2FwaV9taWIuaCAgICAgICAgfCAgIDIgKy0K
IC4uLi93aXJlbGVzcy9zaWxhYnN9L3dmeC9oaWZfcnguYyAgICAgICAgICAgICB8ICAgMiArLQog
Li4uL3dpcmVsZXNzL3NpbGFic30vd2Z4L2hpZl9yeC5oICAgICAgICAgICAgIHwgICAwCiAuLi4v
d2lyZWxlc3Mvc2lsYWJzfS93ZngvaGlmX3R4LmMgICAgICAgICAgICAgfCAgIDIgKy0KIC4uLi93
aXJlbGVzcy9zaWxhYnN9L3dmeC9oaWZfdHguaCAgICAgICAgICAgICB8ICAgMiArLQogLi4uL3dp
cmVsZXNzL3NpbGFic30vd2Z4L2hpZl90eF9taWIuYyAgICAgICAgIHwgICAyICstCiAuLi4vd2ly
ZWxlc3Mvc2lsYWJzfS93ZngvaGlmX3R4X21pYi5oICAgICAgICAgfCAgIDIgKy0KIC4uLi93aXJl
bGVzcy9zaWxhYnN9L3dmeC9od2lvLmMgICAgICAgICAgICAgICB8ICAgMiArLQogLi4uL3dpcmVs
ZXNzL3NpbGFic30vd2Z4L2h3aW8uaCAgICAgICAgICAgICAgIHwgICAyICstCiAuLi4vd2lyZWxl
c3Mvc2lsYWJzfS93Zngva2V5LmMgICAgICAgICAgICAgICAgfCAgIDIgKy0KIC4uLi93aXJlbGVz
cy9zaWxhYnN9L3dmeC9rZXkuaCAgICAgICAgICAgICAgICB8ICAgMiArLQogLi4uL3dpcmVsZXNz
L3NpbGFic30vd2Z4L21haW4uYyAgICAgICAgICAgICAgIHwgICAyICstCiAuLi4vd2lyZWxlc3Mv
c2lsYWJzfS93ZngvbWFpbi5oICAgICAgICAgICAgICAgfCAgIDIgKy0KIC4uLi93aXJlbGVzcy9z
aWxhYnN9L3dmeC9xdWV1ZS5jICAgICAgICAgICAgICB8ICAxNiArKy0KIC4uLi93aXJlbGVzcy9z
aWxhYnN9L3dmeC9xdWV1ZS5oICAgICAgICAgICAgICB8ICAgMyArLQogLi4uL3dpcmVsZXNzL3Np
bGFic30vd2Z4L3NjYW4uYyAgICAgICAgICAgICAgIHwgICAyICstCiAuLi4vd2lyZWxlc3Mvc2ls
YWJzfS93Zngvc2Nhbi5oICAgICAgICAgICAgICAgfCAgIDIgKy0KIC4uLi93aXJlbGVzcy9zaWxh
YnN9L3dmeC9zdGEuYyAgICAgICAgICAgICAgICB8ICAgMiArLQogLi4uL3dpcmVsZXNzL3NpbGFi
c30vd2Z4L3N0YS5oICAgICAgICAgICAgICAgIHwgICAyICstCiAuLi4vd2lyZWxlc3Mvc2lsYWJz
fS93ZngvdHJhY2VzLmggICAgICAgICAgICAgfCAgIDIgKy0KIC4uLi93aXJlbGVzcy9zaWxhYnN9
L3dmeC93ZnguaCAgICAgICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9zdGFnaW5nL0tjb25m
aWcgICAgICAgICAgICAgICAgICAgICAgIHwgICAyIC0KIGRyaXZlcnMvc3RhZ2luZy9NYWtlZmls
ZSAgICAgICAgICAgICAgICAgICAgICB8ICAgMSAtCiAuLi4vYmluZGluZ3MvbmV0L3dpcmVsZXNz
L3NpbGlhYnMsd2Z4LnR4dCAgICAgfCAgOTggLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvc3RhZ2lu
Zy93ZngvVE9ETyAgICAgICAgICAgICAgICAgICAgICB8ICAgNiAtCiA0OCBmaWxlcyBjaGFuZ2Vk
LCAxOTggaW5zZXJ0aW9ucygrKSwgMTYxIGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvd2lyZWxlc3Mvc2lsYWJzLHdm
eC55YW1sCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL0tj
b25maWcKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvTWFr
ZWZpbGUKIHJlbmFtZSBkcml2ZXJzL3tzdGFnaW5nID0+IG5ldC93aXJlbGVzcy9zaWxhYnN9L3dm
eC9LY29uZmlnICgxMDAlKQogcmVuYW1lIGRyaXZlcnMve3N0YWdpbmcgPT4gbmV0L3dpcmVsZXNz
L3NpbGFic30vd2Z4L01ha2VmaWxlICgxMDAlKQogcmVuYW1lIGRyaXZlcnMve3N0YWdpbmcgPT4g
bmV0L3dpcmVsZXNzL3NpbGFic30vd2Z4L2JoLmMgKDk5JSkKIHJlbmFtZSBkcml2ZXJzL3tzdGFn
aW5nID0+IG5ldC93aXJlbGVzcy9zaWxhYnN9L3dmeC9iaC5oICg5MiUpCiByZW5hbWUgZHJpdmVy
cy97c3RhZ2luZyA9PiBuZXQvd2lyZWxlc3Mvc2lsYWJzfS93ZngvYnVzLmggKDk0JSkKIHJlbmFt
ZSBkcml2ZXJzL3tzdGFnaW5nID0+IG5ldC93aXJlbGVzcy9zaWxhYnN9L3dmeC9idXNfc2Rpby5j
ICg5OSUpCiByZW5hbWUgZHJpdmVycy97c3RhZ2luZyA9PiBuZXQvd2lyZWxlc3Mvc2lsYWJzfS93
ZngvYnVzX3NwaS5jICg5OSUpCiByZW5hbWUgZHJpdmVycy97c3RhZ2luZyA9PiBuZXQvd2lyZWxl
c3Mvc2lsYWJzfS93ZngvZGF0YV9yeC5jICg5MyUpCiByZW5hbWUgZHJpdmVycy97c3RhZ2luZyA9
PiBuZXQvd2lyZWxlc3Mvc2lsYWJzfS93ZngvZGF0YV9yeC5oICg4NiUpCiByZW5hbWUgZHJpdmVy
cy97c3RhZ2luZyA9PiBuZXQvd2lyZWxlc3Mvc2lsYWJzfS93ZngvZGF0YV90eC5jICg5OSUpCiBy
ZW5hbWUgZHJpdmVycy97c3RhZ2luZyA9PiBuZXQvd2lyZWxlc3Mvc2lsYWJzfS93ZngvZGF0YV90
eC5oICg5NiUpCiByZW5hbWUgZHJpdmVycy97c3RhZ2luZyA9PiBuZXQvd2lyZWxlc3Mvc2lsYWJz
fS93ZngvZGVidWcuYyAoOTQlKQogcmVuYW1lIGRyaXZlcnMve3N0YWdpbmcgPT4gbmV0L3dpcmVs
ZXNzL3NpbGFic30vd2Z4L2RlYnVnLmggKDEwMCUpCiByZW5hbWUgZHJpdmVycy97c3RhZ2luZyA9
PiBuZXQvd2lyZWxlc3Mvc2lsYWJzfS93ZngvZndpby5jICg5OSUpCiByZW5hbWUgZHJpdmVycy97
c3RhZ2luZyA9PiBuZXQvd2lyZWxlc3Mvc2lsYWJzfS93ZngvZndpby5oICgxMDAlKQogcmVuYW1l
IGRyaXZlcnMve3N0YWdpbmcgPT4gbmV0L3dpcmVsZXNzL3NpbGFic30vd2Z4L2hpZl9hcGlfY21k
LmggKDk5JSkKIHJlbmFtZSBkcml2ZXJzL3tzdGFnaW5nID0+IG5ldC93aXJlbGVzcy9zaWxhYnN9
L3dmeC9oaWZfYXBpX2dlbmVyYWwuaCAoOTklKQogcmVuYW1lIGRyaXZlcnMve3N0YWdpbmcgPT4g
bmV0L3dpcmVsZXNzL3NpbGFic30vd2Z4L2hpZl9hcGlfbWliLmggKDk5JSkKIHJlbmFtZSBkcml2
ZXJzL3tzdGFnaW5nID0+IG5ldC93aXJlbGVzcy9zaWxhYnN9L3dmeC9oaWZfcnguYyAoOTklKQog
cmVuYW1lIGRyaXZlcnMve3N0YWdpbmcgPT4gbmV0L3dpcmVsZXNzL3NpbGFic30vd2Z4L2hpZl9y
eC5oICgxMDAlKQogcmVuYW1lIGRyaXZlcnMve3N0YWdpbmcgPT4gbmV0L3dpcmVsZXNzL3NpbGFi
c30vd2Z4L2hpZl90eC5jICg5OSUpCiByZW5hbWUgZHJpdmVycy97c3RhZ2luZyA9PiBuZXQvd2ly
ZWxlc3Mvc2lsYWJzfS93ZngvaGlmX3R4LmggKDk3JSkKIHJlbmFtZSBkcml2ZXJzL3tzdGFnaW5n
ID0+IG5ldC93aXJlbGVzcy9zaWxhYnN9L3dmeC9oaWZfdHhfbWliLmMgKDk5JSkKIHJlbmFtZSBk
cml2ZXJzL3tzdGFnaW5nID0+IG5ldC93aXJlbGVzcy9zaWxhYnN9L3dmeC9oaWZfdHhfbWliLmgg
KDk3JSkKIHJlbmFtZSBkcml2ZXJzL3tzdGFnaW5nID0+IG5ldC93aXJlbGVzcy9zaWxhYnN9L3dm
eC9od2lvLmMgKDk5JSkKIHJlbmFtZSBkcml2ZXJzL3tzdGFnaW5nID0+IG5ldC93aXJlbGVzcy9z
aWxhYnN9L3dmeC9od2lvLmggKDk4JSkKIHJlbmFtZSBkcml2ZXJzL3tzdGFnaW5nID0+IG5ldC93
aXJlbGVzcy9zaWxhYnN9L3dmeC9rZXkuYyAoOTklKQogcmVuYW1lIGRyaXZlcnMve3N0YWdpbmcg
PT4gbmV0L3dpcmVsZXNzL3NpbGFic30vd2Z4L2tleS5oICg4NyUpCiByZW5hbWUgZHJpdmVycy97
c3RhZ2luZyA9PiBuZXQvd2lyZWxlc3Mvc2lsYWJzfS93ZngvbWFpbi5jICg5OSUpCiByZW5hbWUg
ZHJpdmVycy97c3RhZ2luZyA9PiBuZXQvd2lyZWxlc3Mvc2lsYWJzfS93ZngvbWFpbi5oICg5NSUp
CiByZW5hbWUgZHJpdmVycy97c3RhZ2luZyA9PiBuZXQvd2lyZWxlc3Mvc2lsYWJzfS93ZngvcXVl
dWUuYyAoOTMlKQogcmVuYW1lIGRyaXZlcnMve3N0YWdpbmcgPT4gbmV0L3dpcmVsZXNzL3NpbGFi
c30vd2Z4L3F1ZXVlLmggKDk0JSkKIHJlbmFtZSBkcml2ZXJzL3tzdGFnaW5nID0+IG5ldC93aXJl
bGVzcy9zaWxhYnN9L3dmeC9zY2FuLmMgKDk4JSkKIHJlbmFtZSBkcml2ZXJzL3tzdGFnaW5nID0+
IG5ldC93aXJlbGVzcy9zaWxhYnN9L3dmeC9zY2FuLmggKDkwJSkKIHJlbmFtZSBkcml2ZXJzL3tz
dGFnaW5nID0+IG5ldC93aXJlbGVzcy9zaWxhYnN9L3dmeC9zdGEuYyAoOTklKQogcmVuYW1lIGRy
aXZlcnMve3N0YWdpbmcgPT4gbmV0L3dpcmVsZXNzL3NpbGFic30vd2Z4L3N0YS5oICg5OCUpCiBy
ZW5hbWUgZHJpdmVycy97c3RhZ2luZyA9PiBuZXQvd2lyZWxlc3Mvc2lsYWJzfS93ZngvdHJhY2Vz
LmggKDk5JSkKIHJlbmFtZSBkcml2ZXJzL3tzdGFnaW5nID0+IG5ldC93aXJlbGVzcy9zaWxhYnN9
L3dmeC93ZnguaCAoOTglKQogZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy93Zngv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC93aXJlbGVzcy9zaWxpYWJzLHdm
eC50eHQKIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvd2Z4L1RPRE8KCi0tIAoy
LjI4LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
