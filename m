Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 768BA40FBB1
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Sep 2021 17:16:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 11BE240762;
	Fri, 17 Sep 2021 15:16:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id APyNXH8Z5ik4; Fri, 17 Sep 2021 15:16:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2EEE140104;
	Fri, 17 Sep 2021 15:16:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5FCA61BF36A
 for <devel@linuxdriverproject.org>; Fri, 17 Sep 2021 15:14:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4F58460BEF
 for <devel@linuxdriverproject.org>; Fri, 17 Sep 2021 15:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mYYUPPAiUCtm for <devel@linuxdriverproject.org>;
 Fri, 17 Sep 2021 15:14:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2049.outbound.protection.outlook.com [40.107.244.49])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3565160BC5
 for <devel@driverdev.osuosl.org>; Fri, 17 Sep 2021 15:14:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zsr8VAth7k0VUxCyS70l5goWzowFsG2mLF3vtLgpMrfgficAjol7OSBoSOlMJPbpahIxlcWy6mXQy1RBsUyt3fJlyzwPgkcglvzreICA/bvH3r8Kj4OSx8FKWV6aQY1ETdnfLe8sHXjbNRxYh60DFdihZL3b7GaWfvVB/7GY369yzHNcJt7697vnizflUy7GCNWoEMiW5e8wZ42RW7fO0O9gIs3sOj+c47rohs6HNmsfW1/Tdk4f0YanhAk228U85SjcPMkdZt4vqJGQ5z8QeLZtVmMZlSVkbMnVAmGn+Cmuj2hBvxmpdEtJgbr72/DuJ0jcGqUu/rCcxG87bo7zCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=L1PGQFYwqGncDdlTHJJr+Np/ZfkOZwxSjiFSMD2Zj+E=;
 b=jGfhSGxBHcshdtluTmfFxW0dyHs8S4E9jgGkjIJEt59mwfLdRCJWYzrRNCNUjWp3zOf49mTSd9WnQc+9lSC4hUBS1ryQAQEDnGHO3wmcwh07rLaTxnFJhX+azPCNElgNlRMyKR3gyleEvYlEe8fA0cQ6rpk0hEHlGX+UorgGf74tEqLZZ/V9NutAbW+V4D+S7epsySlzr82CXGE//zkVr0yfoqnZ7mdH5WJyWXXfqZ0eQ828TZde9IP9UGKTfnzNfFdIrtGf/2uTy4Z54lDKcDEIx3aZMqp1PpQZhqlnIWHZ/izjgs3lkmZcCdQB2AntKHuCqiNSWhrf/D5Yy8KkzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L1PGQFYwqGncDdlTHJJr+Np/ZfkOZwxSjiFSMD2Zj+E=;
 b=EOf2KK93lbL5pHFH1HwrlcH0XYojEiEOtOddblMDN+460TytqCSwmMbCge9/ZkMW6kDaqyvJGhV35dV4EHr1Z2GmocDjKD6eDn5UwR+4/9qBhu/tQKx5Az4IgXe5TMqs4Oc8I4JhN8MhqUUQrRWT31syPiUq/gJ7Bu/gv8yudwI=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA2PR11MB4876.namprd11.prod.outlook.com (2603:10b6:806:119::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Fri, 17 Sep
 2021 15:14:42 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4500.017; Fri, 17 Sep 2021
 15:14:42 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH v6 09/24] wfx: add hwio.c/hwio.h
Date: Fri, 17 Sep 2021 17:13:45 +0200
Message-Id: <20210917151401.2274772-10-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210917151401.2274772-1-Jerome.Pouiller@silabs.com>
References: <20210917151401.2274772-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: SA9PR03CA0029.namprd03.prod.outlook.com
 (2603:10b6:806:20::34) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
Received: from pc-42.silabs.com (2a01:e34:ecb5:66a0:9876:e1d7:65be:d294) by
 SA9PR03CA0029.namprd03.prod.outlook.com (2603:10b6:806:20::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.14 via Frontend Transport; Fri, 17 Sep 2021 15:14:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 570f42f3-4bc8-42ee-ff20-08d979eddfa5
X-MS-TrafficTypeDiagnostic: SA2PR11MB4876:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA2PR11MB48762812A32A8BDD27427DA893DD9@SA2PR11MB4876.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:561;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vzU2zZCRd9E3I3zWgGAo8cATAfSlZeZzo0S+Su5cf683WD61JgSF/1NOOHkH3HLVv6hv+Bu3/2UI5vcFLfNt9Zt7YvfTHR1i3wD+lSr381Yf2E/jFdpJIOCanFlr48GEEOtoypveSR+rMBJwbR8E1Bul45qsiVVFX83gqdx9HjB/BV01mq74kqCQTFfKtjEiJnWUgTl/43ng4/Tj0emMpAD74Vh7ReS0akAFol0lEBOPd2DBBK5V+DNjMHSBhxHNhPm271aB4mKEon8hRC6FlgNZlQusq0fZUN2ZPox7IZWDZ+YvN24C/tIFpHw1eGoX+qvK3Ui07foZBWpjtxOIjjvSPkZECEHl82wqSy4731KAj0fSekvgAu0XhpL9NA0237HzhscN8ruvuawwplving87qWzVAjWO+l/9nPwMmBZguQIXLxD/kZHKg6Hl1pT2DXStNJbMx9hVbBOuM+By06gWnwkm9T4UhkyrW4SNB3Ge4dpKlwWko/c6jjc9G2z0ifMFlIu7prH5ga/Ath/mjKzgRMw+ZRiJoOfco2konkblUt6Rrw4W4QzBfnID20Vvvv0GvLnXd5ubyFCLFNMzMk0w5SfuFjEbJh8Dr2rj3fOgYg2a2CnDUS/FtZamm5dKrMjlTZuL+Qz6xjjGFMuTxw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66556008)(66946007)(508600001)(52116002)(7696005)(6916009)(66476007)(30864003)(4326008)(316002)(6666004)(86362001)(2616005)(6486002)(1076003)(107886003)(38100700002)(83380400001)(7416002)(2906002)(54906003)(5660300002)(186003)(8676002)(8936002)(66574015)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NzFWSVFscXI0TUQwNlhIaDNOM290NHFRRzlZRzJ4VU16R0xrUis0WlhobFZJ?=
 =?utf-8?B?TW5RUE9GdjdTRVVjZUZUZ0JtbHNQQlBpVmc2V2pjN3IzNUpvajhVUjRQR2Fn?=
 =?utf-8?B?SVhlZ0FyQzV3SzdYU3Z4Nms5R1RrdDY0bkpqd3VINzlreXM3VE9FSnY5SmZE?=
 =?utf-8?B?TlM0bmhJOWplR0pvSnVWQXFwU2V2YVRQdGMvVW5YZkxRSUdqdEpsTjZYcEVr?=
 =?utf-8?B?UVdQY0loUXNxL21XbDJ4K0JodmV5MGVpTWpBMG9JRFF6c3B3VEdYdk0vTzlT?=
 =?utf-8?B?SFkvdStJTmE3L3RHaGhKM3p0NlZ0N0FGMTlTSEpmVzVoWGlqVFlXYW1QMmNp?=
 =?utf-8?B?Z0hBaDdMenovRXBrVXk4S0VMTmxxbnFadm5qbGZvTFh4TjNEcVBSc0M0Q1Mv?=
 =?utf-8?B?YldJcC9xM0dDaFJKZU0yb2pvZTRpVUpzL2tTaytsNm5RT0hRdkM4RC9rbHBD?=
 =?utf-8?B?V0NQNmZNa0Q2YU1mZExJRnlpWUN5OC9ST0hpWHVOMTljS3pVaFJsRDRqODlJ?=
 =?utf-8?B?cGIxR09KcWNvU240REFmcFVDNXJMMFVrZDBxME5odVp3TGw4N055ZFRQb2FF?=
 =?utf-8?B?OVJUZE82VmFRVjdDVDVYc0NrbDR4a3pna2tEd1pGeFpKRHBBQmRDejZIS090?=
 =?utf-8?B?ZnF2STRyL0Zhb2krRHJKM21nU2ZwTDFQYWR6Mi9lQVZmNXJPYm90Y29Qa2hk?=
 =?utf-8?B?NjgwcHFFMnd3dmZLL3l2cUpOUnhGQVA2SmtyTThCOUhxT0dTbXR4YkxiVklH?=
 =?utf-8?B?QllkT2RnSkRXbUNjRUdHRWw4YTJWcnNPWnhoTCs0RUJzZms1dnFOSkJoeTAw?=
 =?utf-8?B?T1JTd1krdVJXTzRCcTVHZld3K2YxaTliN2hFSjZqVUVQVmpoUkdaTytvazNv?=
 =?utf-8?B?Sjl0ZGpIYjM1MGJzUkpOZExudy9CMkk1RVpweGVHMExWTHZ6MFhTYUs0UlpK?=
 =?utf-8?B?VXlCS0Z3TVhrYUM4WmZEdlEzRlI5dVhPdEtLUlc0QlQ3RlVSQmZrRlJ3UHYr?=
 =?utf-8?B?RzNLa3N6bHF2S0hrdTlxNzdmeHowcWRoZnBZRC9Oc3ZWNzFzMEY5YlQ5Q2pT?=
 =?utf-8?B?K2RDa0ZqWFcvYVBncm1JR282MThIY2xvUGV3YVljcVhYSkxzTXlrQmlPY2Zv?=
 =?utf-8?B?a3d3YlhSNUpRcWpvSE9mWHRRNkRBVERxQ0tPTkZ6M2ZBc2dJbEMrcjJXR3Yy?=
 =?utf-8?B?dWVHUjBRK25hOUlQMzVkN3RNZXBncnhZZDJIS0ozUlVtREw4UTE0YXBPOHp4?=
 =?utf-8?B?bVNnK1JURzVMUnY1KytUYXZ3ZTljTEJMeGVmUnZNRTR4OEZnYXkvalFWdDJV?=
 =?utf-8?B?TFlnM0RSZXROQ0dVbVh4dTRXaGVIRSt2TXNsc0Z1aEQ5Zk9tTi95cmRXOWtq?=
 =?utf-8?B?VEs3YWRQSGNoalhlajRkblJiLzhEanNxUVQwT0hlMUlEQ2FQRGNDRHNUaHZL?=
 =?utf-8?B?bktQYmNTd0RaaE1sSjRxNHZBZVdKN0VJYm4zZjcyMUJ3QUk1YU9pR1h3U3E2?=
 =?utf-8?B?cUEvOFJWaVVoRjF0K2lFM2ZNQWE1YmllN3BXRTd1cGhFaEo1L3UwTXBMNlJL?=
 =?utf-8?B?ZFNxVVNWY2pXdnFhbEIzeEh4VlVZbkxPZG1CWUIwZ1JVUjA3R1JLeG1NV245?=
 =?utf-8?B?UHlCQUlJNlczd0F2MXJWQy9qT2t2WXhESnRTZzV1Q1ZFdWt6U1doSlZEMHlM?=
 =?utf-8?B?VDBDRHZrdVJFdW14bkN2R0hkSUt0MXhOS0ZHdUM2MTF5Yk0xd2s2anRlYUp1?=
 =?utf-8?B?ZDU1dE05TFlJbW1hdDQ5UWFjc2JNY2hVcVlLWE5kM1lsMVRIQWlOMGd1OVQv?=
 =?utf-8?B?alFKZDc3UTVJU0E2TFB2SE51QnZLYmw5ZTRLVk1WUmJCcG5JdGNxazlBSmZF?=
 =?utf-8?Q?zxxtP8vCUGZGN?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 570f42f3-4bc8-42ee-ff20-08d979eddfa5
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2021 15:14:41.8492 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yF/j2n4PRbUTG0ZTyXtkwmZMMEoqDrMKve7js/ImzWo1Ub0B3cChL6GRZeiidq4XaG2b8VXjSK8QpyAWEdfWVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4876
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKU2ln
bmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29t
PgotLS0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvaHdpby5jIHwgMzQwICsrKysr
KysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvaHdp
by5oIHwgIDc5ICsrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA0MTkgaW5zZXJ0aW9ucygrKQogY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvaHdpby5jCiBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9od2lvLmgK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L2h3aW8uYyBiL2Ry
aXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvaHdpby5jCm5ldyBmaWxlIG1vZGUgMTAwNjQ0
CmluZGV4IDAwMDAwMDAwMDAwMC4uMzkzYmNiMWUyZjRlCi0tLSAvZGV2L251bGwKKysrIGIvZHJp
dmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9od2lvLmMKQEAgLTAsMCArMSwzNDAgQEAKKy8v
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKKy8qCisgKiBMb3ctbGV2ZWwg
SS9PIGZ1bmN0aW9ucy4KKyAqCisgKiBDb3B5cmlnaHQgKGMpIDIwMTctMjAyMCwgU2lsaWNvbiBM
YWJvcmF0b3JpZXMsIEluYy4KKyAqIENvcHlyaWdodCAoYykgMjAxMCwgU1QtRXJpY3Nzb24KKyAq
LworI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgorI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+Cisj
aW5jbHVkZSA8bGludXgvc2xhYi5oPgorCisjaW5jbHVkZSAiaHdpby5oIgorI2luY2x1ZGUgIndm
eC5oIgorI2luY2x1ZGUgImJ1cy5oIgorI2luY2x1ZGUgInRyYWNlcy5oIgorCitzdGF0aWMgaW50
IHJlYWQzMihzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgaW50IHJlZywgdTMyICp2YWwpCit7CisJaW50
IHJldDsKKwlfX2xlMzIgKnRtcCA9IGttYWxsb2Moc2l6ZW9mKHUzMiksIEdGUF9LRVJORUwpOwor
CisJKnZhbCA9IH4wOyAvKiBOZXZlciByZXR1cm4gdW5kZWZpbmVkIHZhbHVlICovCisJaWYgKCF0
bXApCisJCXJldHVybiAtRU5PTUVNOworCXJldCA9IHdkZXYtPmh3YnVzX29wcy0+Y29weV9mcm9t
X2lvKHdkZXYtPmh3YnVzX3ByaXYsIHJlZywgdG1wLAorCQkJCQkgICAgc2l6ZW9mKHUzMikpOwor
CWlmIChyZXQgPj0gMCkKKwkJKnZhbCA9IGxlMzJfdG9fY3B1KCp0bXApOworCWtmcmVlKHRtcCk7
CisJaWYgKHJldCkKKwkJZGV2X2Vycih3ZGV2LT5kZXYsICIlczogYnVzIGNvbW11bmljYXRpb24g
ZXJyb3I6ICVkXG4iLAorCQkJX19mdW5jX18sIHJldCk7CisJcmV0dXJuIHJldDsKK30KKworc3Rh
dGljIGludCB3cml0ZTMyKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBpbnQgcmVnLCB1MzIgdmFsKQor
eworCWludCByZXQ7CisJX19sZTMyICp0bXAgPSBrbWFsbG9jKHNpemVvZih1MzIpLCBHRlBfS0VS
TkVMKTsKKworCWlmICghdG1wKQorCQlyZXR1cm4gLUVOT01FTTsKKwkqdG1wID0gY3B1X3RvX2xl
MzIodmFsKTsKKwlyZXQgPSB3ZGV2LT5od2J1c19vcHMtPmNvcHlfdG9faW8od2Rldi0+aHdidXNf
cHJpdiwgcmVnLCB0bXAsCisJCQkJCSAgc2l6ZW9mKHUzMikpOworCWtmcmVlKHRtcCk7CisJaWYg
KHJldCkKKwkJZGV2X2Vycih3ZGV2LT5kZXYsICIlczogYnVzIGNvbW11bmljYXRpb24gZXJyb3I6
ICVkXG4iLAorCQkJX19mdW5jX18sIHJldCk7CisJcmV0dXJuIHJldDsKK30KKworc3RhdGljIGlu
dCByZWFkMzJfbG9ja2VkKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBpbnQgcmVnLCB1MzIgKnZhbCkK
K3sKKwlpbnQgcmV0OworCisJd2Rldi0+aHdidXNfb3BzLT5sb2NrKHdkZXYtPmh3YnVzX3ByaXYp
OworCXJldCA9IHJlYWQzMih3ZGV2LCByZWcsIHZhbCk7CisJX3RyYWNlX2lvX3JlYWQzMihyZWcs
ICp2YWwpOworCXdkZXYtPmh3YnVzX29wcy0+dW5sb2NrKHdkZXYtPmh3YnVzX3ByaXYpOworCXJl
dHVybiByZXQ7Cit9CisKK3N0YXRpYyBpbnQgd3JpdGUzMl9sb2NrZWQoc3RydWN0IHdmeF9kZXYg
KndkZXYsIGludCByZWcsIHUzMiB2YWwpCit7CisJaW50IHJldDsKKworCXdkZXYtPmh3YnVzX29w
cy0+bG9jayh3ZGV2LT5od2J1c19wcml2KTsKKwlyZXQgPSB3cml0ZTMyKHdkZXYsIHJlZywgdmFs
KTsKKwlfdHJhY2VfaW9fd3JpdGUzMihyZWcsIHZhbCk7CisJd2Rldi0+aHdidXNfb3BzLT51bmxv
Y2sod2Rldi0+aHdidXNfcHJpdik7CisJcmV0dXJuIHJldDsKK30KKworc3RhdGljIGludCB3cml0
ZTMyX2JpdHNfbG9ja2VkKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBpbnQgcmVnLCB1MzIgbWFzaywg
dTMyIHZhbCkKK3sKKwlpbnQgcmV0OworCXUzMiB2YWxfciwgdmFsX3c7CisKKwlXQVJOX09OKH5t
YXNrICYgdmFsKTsKKwl2YWwgJj0gbWFzazsKKwl3ZGV2LT5od2J1c19vcHMtPmxvY2sod2Rldi0+
aHdidXNfcHJpdik7CisJcmV0ID0gcmVhZDMyKHdkZXYsIHJlZywgJnZhbF9yKTsKKwlfdHJhY2Vf
aW9fcmVhZDMyKHJlZywgdmFsX3IpOworCWlmIChyZXQgPCAwKQorCQlnb3RvIGVycjsKKwl2YWxf
dyA9ICh2YWxfciAmIH5tYXNrKSB8IHZhbDsKKwlpZiAodmFsX3cgIT0gdmFsX3IpIHsKKwkJcmV0
ID0gd3JpdGUzMih3ZGV2LCByZWcsIHZhbF93KTsKKwkJX3RyYWNlX2lvX3dyaXRlMzIocmVnLCB2
YWxfdyk7CisJfQorZXJyOgorCXdkZXYtPmh3YnVzX29wcy0+dW5sb2NrKHdkZXYtPmh3YnVzX3By
aXYpOworCXJldHVybiByZXQ7Cit9CisKK3N0YXRpYyBpbnQgaW5kaXJlY3RfcmVhZChzdHJ1Y3Qg
d2Z4X2RldiAqd2RldiwgaW50IHJlZywgdTMyIGFkZHIsCisJCQkgdm9pZCAqYnVmLCBzaXplX3Qg
bGVuKQoreworCWludCByZXQ7CisJaW50IGk7CisJdTMyIGNmZzsKKwl1MzIgcHJlZmV0Y2g7CisK
KwlXQVJOX09OKGxlbiA+PSAweDIwMDApOworCVdBUk5fT04ocmVnICE9IFdGWF9SRUdfQUhCX0RQ
T1JUICYmIHJlZyAhPSBXRlhfUkVHX1NSQU1fRFBPUlQpOworCisJaWYgKHJlZyA9PSBXRlhfUkVH
X0FIQl9EUE9SVCkKKwkJcHJlZmV0Y2ggPSBDRkdfUFJFRkVUQ0hfQUhCOworCWVsc2UgaWYgKHJl
ZyA9PSBXRlhfUkVHX1NSQU1fRFBPUlQpCisJCXByZWZldGNoID0gQ0ZHX1BSRUZFVENIX1NSQU07
CisJZWxzZQorCQlyZXR1cm4gLUVOT0RFVjsKKworCXJldCA9IHdyaXRlMzIod2RldiwgV0ZYX1JF
R19CQVNFX0FERFIsIGFkZHIpOworCWlmIChyZXQgPCAwKQorCQlnb3RvIGVycjsKKworCXJldCA9
IHJlYWQzMih3ZGV2LCBXRlhfUkVHX0NPTkZJRywgJmNmZyk7CisJaWYgKHJldCA8IDApCisJCWdv
dG8gZXJyOworCisJcmV0ID0gd3JpdGUzMih3ZGV2LCBXRlhfUkVHX0NPTkZJRywgY2ZnIHwgcHJl
ZmV0Y2gpOworCWlmIChyZXQgPCAwKQorCQlnb3RvIGVycjsKKworCWZvciAoaSA9IDA7IGkgPCAy
MDsgaSsrKSB7CisJCXJldCA9IHJlYWQzMih3ZGV2LCBXRlhfUkVHX0NPTkZJRywgJmNmZyk7CisJ
CWlmIChyZXQgPCAwKQorCQkJZ290byBlcnI7CisJCWlmICghKGNmZyAmIHByZWZldGNoKSkKKwkJ
CWJyZWFrOworCQl1c2xlZXBfcmFuZ2UoMjAwLCAyNTApOworCX0KKwlpZiAoaSA9PSAyMCkgewor
CQlyZXQgPSAtRVRJTUVET1VUOworCQlnb3RvIGVycjsKKwl9CisKKwlyZXQgPSB3ZGV2LT5od2J1
c19vcHMtPmNvcHlfZnJvbV9pbyh3ZGV2LT5od2J1c19wcml2LCByZWcsIGJ1ZiwgbGVuKTsKKwor
ZXJyOgorCWlmIChyZXQgPCAwKQorCQltZW1zZXQoYnVmLCAweEZGLCBsZW4pOyAvKiBOZXZlciBy
ZXR1cm4gdW5kZWZpbmVkIHZhbHVlICovCisJcmV0dXJuIHJldDsKK30KKworc3RhdGljIGludCBp
bmRpcmVjdF93cml0ZShzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgaW50IHJlZywgdTMyIGFkZHIsCisJ
CQkgIGNvbnN0IHZvaWQgKmJ1Ziwgc2l6ZV90IGxlbikKK3sKKwlpbnQgcmV0OworCisJV0FSTl9P
TihsZW4gPj0gMHgyMDAwKTsKKwlXQVJOX09OKHJlZyAhPSBXRlhfUkVHX0FIQl9EUE9SVCAmJiBy
ZWcgIT0gV0ZYX1JFR19TUkFNX0RQT1JUKTsKKwlyZXQgPSB3cml0ZTMyKHdkZXYsIFdGWF9SRUdf
QkFTRV9BRERSLCBhZGRyKTsKKwlpZiAocmV0IDwgMCkKKwkJcmV0dXJuIHJldDsKKworCXJldHVy
biB3ZGV2LT5od2J1c19vcHMtPmNvcHlfdG9faW8od2Rldi0+aHdidXNfcHJpdiwgcmVnLCBidWYs
IGxlbik7Cit9CisKK3N0YXRpYyBpbnQgaW5kaXJlY3RfcmVhZF9sb2NrZWQoc3RydWN0IHdmeF9k
ZXYgKndkZXYsIGludCByZWcsIHUzMiBhZGRyLAorCQkJCXZvaWQgKmJ1Ziwgc2l6ZV90IGxlbikK
K3sKKwlpbnQgcmV0OworCisJd2Rldi0+aHdidXNfb3BzLT5sb2NrKHdkZXYtPmh3YnVzX3ByaXYp
OworCXJldCA9IGluZGlyZWN0X3JlYWQod2RldiwgcmVnLCBhZGRyLCBidWYsIGxlbik7CisJX3Ry
YWNlX2lvX2luZF9yZWFkKHJlZywgYWRkciwgYnVmLCBsZW4pOworCXdkZXYtPmh3YnVzX29wcy0+
dW5sb2NrKHdkZXYtPmh3YnVzX3ByaXYpOworCXJldHVybiByZXQ7Cit9CisKK3N0YXRpYyBpbnQg
aW5kaXJlY3Rfd3JpdGVfbG9ja2VkKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBpbnQgcmVnLCB1MzIg
YWRkciwKKwkJCQkgY29uc3Qgdm9pZCAqYnVmLCBzaXplX3QgbGVuKQoreworCWludCByZXQ7CisK
Kwl3ZGV2LT5od2J1c19vcHMtPmxvY2sod2Rldi0+aHdidXNfcHJpdik7CisJcmV0ID0gaW5kaXJl
Y3Rfd3JpdGUod2RldiwgcmVnLCBhZGRyLCBidWYsIGxlbik7CisJX3RyYWNlX2lvX2luZF93cml0
ZShyZWcsIGFkZHIsIGJ1ZiwgbGVuKTsKKwl3ZGV2LT5od2J1c19vcHMtPnVubG9jayh3ZGV2LT5o
d2J1c19wcml2KTsKKwlyZXR1cm4gcmV0OworfQorCitzdGF0aWMgaW50IGluZGlyZWN0X3JlYWQz
Ml9sb2NrZWQoc3RydWN0IHdmeF9kZXYgKndkZXYsIGludCByZWcsCisJCQkJICB1MzIgYWRkciwg
dTMyICp2YWwpCit7CisJaW50IHJldDsKKwlfX2xlMzIgKnRtcCA9IGttYWxsb2Moc2l6ZW9mKHUz
MiksIEdGUF9LRVJORUwpOworCisJaWYgKCF0bXApCisJCXJldHVybiAtRU5PTUVNOworCXdkZXYt
Pmh3YnVzX29wcy0+bG9jayh3ZGV2LT5od2J1c19wcml2KTsKKwlyZXQgPSBpbmRpcmVjdF9yZWFk
KHdkZXYsIHJlZywgYWRkciwgdG1wLCBzaXplb2YodTMyKSk7CisJKnZhbCA9IGxlMzJfdG9fY3B1
KCp0bXApOworCV90cmFjZV9pb19pbmRfcmVhZDMyKHJlZywgYWRkciwgKnZhbCk7CisJd2Rldi0+
aHdidXNfb3BzLT51bmxvY2sod2Rldi0+aHdidXNfcHJpdik7CisJa2ZyZWUodG1wKTsKKwlyZXR1
cm4gcmV0OworfQorCitzdGF0aWMgaW50IGluZGlyZWN0X3dyaXRlMzJfbG9ja2VkKHN0cnVjdCB3
ZnhfZGV2ICp3ZGV2LCBpbnQgcmVnLAorCQkJCSAgIHUzMiBhZGRyLCB1MzIgdmFsKQoreworCWlu
dCByZXQ7CisJX19sZTMyICp0bXAgPSBrbWFsbG9jKHNpemVvZih1MzIpLCBHRlBfS0VSTkVMKTsK
KworCWlmICghdG1wKQorCQlyZXR1cm4gLUVOT01FTTsKKwkqdG1wID0gY3B1X3RvX2xlMzIodmFs
KTsKKwl3ZGV2LT5od2J1c19vcHMtPmxvY2sod2Rldi0+aHdidXNfcHJpdik7CisJcmV0ID0gaW5k
aXJlY3Rfd3JpdGUod2RldiwgcmVnLCBhZGRyLCB0bXAsIHNpemVvZih1MzIpKTsKKwlfdHJhY2Vf
aW9faW5kX3dyaXRlMzIocmVnLCBhZGRyLCB2YWwpOworCXdkZXYtPmh3YnVzX29wcy0+dW5sb2Nr
KHdkZXYtPmh3YnVzX3ByaXYpOworCWtmcmVlKHRtcCk7CisJcmV0dXJuIHJldDsKK30KKworaW50
IHdmeF9kYXRhX3JlYWQoc3RydWN0IHdmeF9kZXYgKndkZXYsIHZvaWQgKmJ1Ziwgc2l6ZV90IGxl
bikKK3sKKwlpbnQgcmV0OworCisJV0FSTigobG9uZylidWYgJiAzLCAiJXM6IHVuYWxpZ25lZCBi
dWZmZXIiLCBfX2Z1bmNfXyk7CisJd2Rldi0+aHdidXNfb3BzLT5sb2NrKHdkZXYtPmh3YnVzX3By
aXYpOworCXJldCA9IHdkZXYtPmh3YnVzX29wcy0+Y29weV9mcm9tX2lvKHdkZXYtPmh3YnVzX3By
aXYsCisJCQkJCSAgICBXRlhfUkVHX0lOX09VVF9RVUVVRSwgYnVmLCBsZW4pOworCV90cmFjZV9p
b19yZWFkKFdGWF9SRUdfSU5fT1VUX1FVRVVFLCBidWYsIGxlbik7CisJd2Rldi0+aHdidXNfb3Bz
LT51bmxvY2sod2Rldi0+aHdidXNfcHJpdik7CisJaWYgKHJldCkKKwkJZGV2X2Vycih3ZGV2LT5k
ZXYsICIlczogYnVzIGNvbW11bmljYXRpb24gZXJyb3I6ICVkXG4iLAorCQkJX19mdW5jX18sIHJl
dCk7CisJcmV0dXJuIHJldDsKK30KKworaW50IHdmeF9kYXRhX3dyaXRlKHN0cnVjdCB3ZnhfZGV2
ICp3ZGV2LCBjb25zdCB2b2lkICpidWYsIHNpemVfdCBsZW4pCit7CisJaW50IHJldDsKKworCVdB
Uk4oKGxvbmcpYnVmICYgMywgIiVzOiB1bmFsaWduZWQgYnVmZmVyIiwgX19mdW5jX18pOworCXdk
ZXYtPmh3YnVzX29wcy0+bG9jayh3ZGV2LT5od2J1c19wcml2KTsKKwlyZXQgPSB3ZGV2LT5od2J1
c19vcHMtPmNvcHlfdG9faW8od2Rldi0+aHdidXNfcHJpdiwKKwkJCQkJICBXRlhfUkVHX0lOX09V
VF9RVUVVRSwgYnVmLCBsZW4pOworCV90cmFjZV9pb193cml0ZShXRlhfUkVHX0lOX09VVF9RVUVV
RSwgYnVmLCBsZW4pOworCXdkZXYtPmh3YnVzX29wcy0+dW5sb2NrKHdkZXYtPmh3YnVzX3ByaXYp
OworCWlmIChyZXQpCisJCWRldl9lcnIod2Rldi0+ZGV2LCAiJXM6IGJ1cyBjb21tdW5pY2F0aW9u
IGVycm9yOiAlZFxuIiwKKwkJCV9fZnVuY19fLCByZXQpOworCXJldHVybiByZXQ7Cit9CisKK2lu
dCBzcmFtX2J1Zl9yZWFkKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1MzIgYWRkciwgdm9pZCAqYnVm
LCBzaXplX3QgbGVuKQoreworCXJldHVybiBpbmRpcmVjdF9yZWFkX2xvY2tlZCh3ZGV2LCBXRlhf
UkVHX1NSQU1fRFBPUlQsIGFkZHIsIGJ1ZiwgbGVuKTsKK30KKworaW50IGFoYl9idWZfcmVhZChz
dHJ1Y3Qgd2Z4X2RldiAqd2RldiwgdTMyIGFkZHIsIHZvaWQgKmJ1Ziwgc2l6ZV90IGxlbikKK3sK
KwlyZXR1cm4gaW5kaXJlY3RfcmVhZF9sb2NrZWQod2RldiwgV0ZYX1JFR19BSEJfRFBPUlQsIGFk
ZHIsIGJ1ZiwgbGVuKTsKK30KKworaW50IHNyYW1fYnVmX3dyaXRlKHN0cnVjdCB3ZnhfZGV2ICp3
ZGV2LCB1MzIgYWRkciwgY29uc3Qgdm9pZCAqYnVmLCBzaXplX3QgbGVuKQoreworCXJldHVybiBp
bmRpcmVjdF93cml0ZV9sb2NrZWQod2RldiwgV0ZYX1JFR19TUkFNX0RQT1JULCBhZGRyLCBidWYs
IGxlbik7Cit9CisKK2ludCBhaGJfYnVmX3dyaXRlKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1MzIg
YWRkciwgY29uc3Qgdm9pZCAqYnVmLCBzaXplX3QgbGVuKQoreworCXJldHVybiBpbmRpcmVjdF93
cml0ZV9sb2NrZWQod2RldiwgV0ZYX1JFR19BSEJfRFBPUlQsIGFkZHIsIGJ1ZiwgbGVuKTsKK30K
KworaW50IHNyYW1fcmVnX3JlYWQoc3RydWN0IHdmeF9kZXYgKndkZXYsIHUzMiBhZGRyLCB1MzIg
KnZhbCkKK3sKKwlyZXR1cm4gaW5kaXJlY3RfcmVhZDMyX2xvY2tlZCh3ZGV2LCBXRlhfUkVHX1NS
QU1fRFBPUlQsIGFkZHIsIHZhbCk7Cit9CisKK2ludCBhaGJfcmVnX3JlYWQoc3RydWN0IHdmeF9k
ZXYgKndkZXYsIHUzMiBhZGRyLCB1MzIgKnZhbCkKK3sKKwlyZXR1cm4gaW5kaXJlY3RfcmVhZDMy
X2xvY2tlZCh3ZGV2LCBXRlhfUkVHX0FIQl9EUE9SVCwgYWRkciwgdmFsKTsKK30KKworaW50IHNy
YW1fcmVnX3dyaXRlKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1MzIgYWRkciwgdTMyIHZhbCkKK3sK
KwlyZXR1cm4gaW5kaXJlY3Rfd3JpdGUzMl9sb2NrZWQod2RldiwgV0ZYX1JFR19TUkFNX0RQT1JU
LCBhZGRyLCB2YWwpOworfQorCitpbnQgYWhiX3JlZ193cml0ZShzdHJ1Y3Qgd2Z4X2RldiAqd2Rl
diwgdTMyIGFkZHIsIHUzMiB2YWwpCit7CisJcmV0dXJuIGluZGlyZWN0X3dyaXRlMzJfbG9ja2Vk
KHdkZXYsIFdGWF9SRUdfQUhCX0RQT1JULCBhZGRyLCB2YWwpOworfQorCitpbnQgY29uZmlnX3Jl
Z19yZWFkKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1MzIgKnZhbCkKK3sKKwlyZXR1cm4gcmVhZDMy
X2xvY2tlZCh3ZGV2LCBXRlhfUkVHX0NPTkZJRywgdmFsKTsKK30KKworaW50IGNvbmZpZ19yZWdf
d3JpdGUoc3RydWN0IHdmeF9kZXYgKndkZXYsIHUzMiB2YWwpCit7CisJcmV0dXJuIHdyaXRlMzJf
bG9ja2VkKHdkZXYsIFdGWF9SRUdfQ09ORklHLCB2YWwpOworfQorCitpbnQgY29uZmlnX3JlZ193
cml0ZV9iaXRzKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1MzIgbWFzaywgdTMyIHZhbCkKK3sKKwly
ZXR1cm4gd3JpdGUzMl9iaXRzX2xvY2tlZCh3ZGV2LCBXRlhfUkVHX0NPTkZJRywgbWFzaywgdmFs
KTsKK30KKworaW50IGNvbnRyb2xfcmVnX3JlYWQoc3RydWN0IHdmeF9kZXYgKndkZXYsIHUzMiAq
dmFsKQoreworCXJldHVybiByZWFkMzJfbG9ja2VkKHdkZXYsIFdGWF9SRUdfQ09OVFJPTCwgdmFs
KTsKK30KKworaW50IGNvbnRyb2xfcmVnX3dyaXRlKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1MzIg
dmFsKQoreworCXJldHVybiB3cml0ZTMyX2xvY2tlZCh3ZGV2LCBXRlhfUkVHX0NPTlRST0wsIHZh
bCk7Cit9CisKK2ludCBjb250cm9sX3JlZ193cml0ZV9iaXRzKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2
LCB1MzIgbWFzaywgdTMyIHZhbCkKK3sKKwlyZXR1cm4gd3JpdGUzMl9iaXRzX2xvY2tlZCh3ZGV2
LCBXRlhfUkVHX0NPTlRST0wsIG1hc2ssIHZhbCk7Cit9CisKK2ludCBpZ3ByX3JlZ19yZWFkKHN0
cnVjdCB3ZnhfZGV2ICp3ZGV2LCBpbnQgaW5kZXgsIHUzMiAqdmFsKQoreworCWludCByZXQ7CisK
KwkqdmFsID0gfjA7IC8qIE5ldmVyIHJldHVybiB1bmRlZmluZWQgdmFsdWUgKi8KKwlyZXQgPSB3
cml0ZTMyX2xvY2tlZCh3ZGV2LCBXRlhfUkVHX1NFVF9HRU5fUl9XLCBJR1BSX1JXIHwgaW5kZXgg
PDwgMjQpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CisJcmV0ID0gcmVhZDMyX2xvY2tlZCh3
ZGV2LCBXRlhfUkVHX1NFVF9HRU5fUl9XLCB2YWwpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7
CisJKnZhbCAmPSBJR1BSX1ZBTFVFOworCXJldHVybiByZXQ7Cit9CisKK2ludCBpZ3ByX3JlZ193
cml0ZShzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgaW50IGluZGV4LCB1MzIgdmFsKQoreworCXJldHVy
biB3cml0ZTMyX2xvY2tlZCh3ZGV2LCBXRlhfUkVHX1NFVF9HRU5fUl9XLCBpbmRleCA8PCAyNCB8
IHZhbCk7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L2h3
aW8uaCBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvaHdpby5oCm5ldyBmaWxlIG1v
ZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uZDM0YmFhZTQ3MDE3Ci0tLSAvZGV2L251bGwK
KysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9od2lvLmgKQEAgLTAsMCArMSw3
OSBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seSAqLworLyoKKyAq
IExvdy1sZXZlbCBJL08gZnVuY3Rpb25zLgorICoKKyAqIENvcHlyaWdodCAoYykgMjAxNy0yMDIw
LCBTaWxpY29uIExhYm9yYXRvcmllcywgSW5jLgorICogQ29weXJpZ2h0IChjKSAyMDEwLCBTVC1F
cmljc3NvbgorICovCisjaWZuZGVmIFdGWF9IV0lPX0gKKyNkZWZpbmUgV0ZYX0hXSU9fSAorCisj
aW5jbHVkZSA8bGludXgvdHlwZXMuaD4KKworc3RydWN0IHdmeF9kZXY7CisKKy8qIENhdXRpb246
IGluIHRoZSBmdW5jdGlvbnMgYmVsb3csICdidWYnIHdpbGwgdXNlZCB3aXRoIGEgRE1BLiBTbywg
aXQgbXVzdCBiZQorICoga21hbGxvYydkIChkbyBub3QgdXNlIHN0YWNrIGFsbG9jYXRlZCBidWZm
ZXJzKS4gSW4gZG91YnQsIGVuYWJsZQorICogQ09ORklHX0RFQlVHX1NHIHRvIGRldGVjdCBiYWRs
eSBsb2NhdGVkIGJ1ZmZlci4KKyAqLworaW50IHdmeF9kYXRhX3JlYWQoc3RydWN0IHdmeF9kZXYg
KndkZXYsIHZvaWQgKmJ1Ziwgc2l6ZV90IGJ1Zl9sZW4pOworaW50IHdmeF9kYXRhX3dyaXRlKHN0
cnVjdCB3ZnhfZGV2ICp3ZGV2LCBjb25zdCB2b2lkICpidWYsIHNpemVfdCBidWZfbGVuKTsKKwor
aW50IHNyYW1fYnVmX3JlYWQoc3RydWN0IHdmeF9kZXYgKndkZXYsIHUzMiBhZGRyLCB2b2lkICpi
dWYsIHNpemVfdCBsZW4pOworaW50IHNyYW1fYnVmX3dyaXRlKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2
LCB1MzIgYWRkciwgY29uc3Qgdm9pZCAqYnVmLCBzaXplX3QgbGVuKTsKKworaW50IGFoYl9idWZf
cmVhZChzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgdTMyIGFkZHIsIHZvaWQgKmJ1Ziwgc2l6ZV90IGxl
bik7CitpbnQgYWhiX2J1Zl93cml0ZShzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgdTMyIGFkZHIsIGNv
bnN0IHZvaWQgKmJ1Ziwgc2l6ZV90IGxlbik7CisKK2ludCBzcmFtX3JlZ19yZWFkKHN0cnVjdCB3
ZnhfZGV2ICp3ZGV2LCB1MzIgYWRkciwgdTMyICp2YWwpOworaW50IHNyYW1fcmVnX3dyaXRlKHN0
cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1MzIgYWRkciwgdTMyIHZhbCk7CisKK2ludCBhaGJfcmVnX3Jl
YWQoc3RydWN0IHdmeF9kZXYgKndkZXYsIHUzMiBhZGRyLCB1MzIgKnZhbCk7CitpbnQgYWhiX3Jl
Z193cml0ZShzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgdTMyIGFkZHIsIHUzMiB2YWwpOworCisjZGVm
aW5lIENGR19FUlJfU1BJX0ZSQU1FICAgICAgICAgIDB4MDAwMDAwMDEgLyogb25seSB3aXRoIFNQ
SSAqLworI2RlZmluZSBDRkdfRVJSX1NESU9fQlVGX01JU01BVENIICAweDAwMDAwMDAxIC8qIG9u
bHkgd2l0aCBTRElPICovCisjZGVmaW5lIENGR19FUlJfQlVGX1VOREVSUlVOICAgICAgIDB4MDAw
MDAwMDIKKyNkZWZpbmUgQ0ZHX0VSUl9EQVRBX0lOX1RPT19MQVJHRSAgMHgwMDAwMDAwNAorI2Rl
ZmluZSBDRkdfRVJSX0hPU1RfTk9fT1VUX1FVRVVFICAweDAwMDAwMDA4CisjZGVmaW5lIENGR19F
UlJfQlVGX09WRVJSVU4gICAgICAgIDB4MDAwMDAwMTAKKyNkZWZpbmUgQ0ZHX0VSUl9EQVRBX09V
VF9UT09fTEFSR0UgMHgwMDAwMDAyMAorI2RlZmluZSBDRkdfRVJSX0hPU1RfTk9fSU5fUVVFVUUg
ICAweDAwMDAwMDQwCisjZGVmaW5lIENGR19FUlJfSE9TVF9DUkNfTUlTUyAgICAgIDB4MDAwMDAw
ODAgLyogb25seSB3aXRoIFNESU8gKi8KKyNkZWZpbmUgQ0ZHX1NQSV9JR05PUkVfQ1MgICAgICAg
ICAgMHgwMDAwMDA4MCAvKiBvbmx5IHdpdGggU1BJICovCisjZGVmaW5lIENGR19CWVRFX09SREVS
X01BU0sgICAgICAgIDB4MDAwMDAzMDAgLyogb25seSB3cml0YWJsZSB3aXRoIFNQSSAqLworI2Rl
ZmluZSAgICAgQ0ZHX0JZVEVfT1JERVJfQkFEQyAgICAweDAwMDAwMDAwCisjZGVmaW5lICAgICBD
RkdfQllURV9PUkRFUl9EQ0JBICAgIDB4MDAwMDAxMDAKKyNkZWZpbmUgICAgIENGR19CWVRFX09S
REVSX0FCQ0QgICAgMHgwMDAwMDIwMCAvKiBTRElPIGFsd2F5cyB1c2UgdGhpcyB2YWx1ZSAqLwor
I2RlZmluZSBDRkdfRElSRUNUX0FDQ0VTU19NT0RFICAgICAweDAwMDAwNDAwCisjZGVmaW5lIENG
R19QUkVGRVRDSF9BSEIgICAgICAgICAgIDB4MDAwMDA4MDAKKyNkZWZpbmUgQ0ZHX0RJU0FCTEVf
Q1BVX0NMSyAgICAgICAgMHgwMDAwMTAwMAorI2RlZmluZSBDRkdfUFJFRkVUQ0hfU1JBTSAgICAg
ICAgICAweDAwMDAyMDAwCisjZGVmaW5lIENGR19DUFVfUkVTRVQgICAgICAgICAgICAgIDB4MDAw
MDQwMDAKKyNkZWZpbmUgQ0ZHX1NESU9fRElTQUJMRV9JUlEgICAgICAgMHgwMDAwODAwMCAvKiBv
bmx5IHdpdGggU0RJTyAqLworI2RlZmluZSBDRkdfSVJRX0VOQUJMRV9EQVRBICAgICAgICAweDAw
MDEwMDAwCisjZGVmaW5lIENGR19JUlFfRU5BQkxFX1dSRFkgICAgICAgIDB4MDAwMjAwMDAKKyNk
ZWZpbmUgQ0ZHX0NMS19SSVNFX0VER0UgICAgICAgICAgMHgwMDA0MDAwMAorI2RlZmluZSBDRkdf
U0RJT19ESVNBQkxFX0NSQ19DSEsgICAweDAwMDgwMDAwIC8qIG9ubHkgd2l0aCBTRElPICovCisj
ZGVmaW5lIENGR19SRVNFUlZFRCAgICAgICAgICAgICAgIDB4MDBGMDAwMDAKKyNkZWZpbmUgQ0ZH
X0RFVklDRV9JRF9NQUpPUiAgICAgICAgMHgwNzAwMDAwMAorI2RlZmluZSBDRkdfREVWSUNFX0lE
X1JFU0VSVkVEICAgICAweDc4MDAwMDAwCisjZGVmaW5lIENGR19ERVZJQ0VfSURfVFlQRSAgICAg
ICAgIDB4ODAwMDAwMDAKK2ludCBjb25maWdfcmVnX3JlYWQoc3RydWN0IHdmeF9kZXYgKndkZXYs
IHUzMiAqdmFsKTsKK2ludCBjb25maWdfcmVnX3dyaXRlKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1
MzIgdmFsKTsKK2ludCBjb25maWdfcmVnX3dyaXRlX2JpdHMoc3RydWN0IHdmeF9kZXYgKndkZXYs
IHUzMiBtYXNrLCB1MzIgdmFsKTsKKworI2RlZmluZSBDVFJMX05FWFRfTEVOX01BU0sgICAweDAw
MDAwRkZGCisjZGVmaW5lIENUUkxfV0xBTl9XQUtFVVAgICAgIDB4MDAwMDEwMDAKKyNkZWZpbmUg
Q1RSTF9XTEFOX1JFQURZICAgICAgMHgwMDAwMjAwMAoraW50IGNvbnRyb2xfcmVnX3JlYWQoc3Ry
dWN0IHdmeF9kZXYgKndkZXYsIHUzMiAqdmFsKTsKK2ludCBjb250cm9sX3JlZ193cml0ZShzdHJ1
Y3Qgd2Z4X2RldiAqd2RldiwgdTMyIHZhbCk7CitpbnQgY29udHJvbF9yZWdfd3JpdGVfYml0cyhz
dHJ1Y3Qgd2Z4X2RldiAqd2RldiwgdTMyIG1hc2ssIHUzMiB2YWwpOworCisjZGVmaW5lIElHUFJf
UlcgICAgICAgICAgMHg4MDAwMDAwMAorI2RlZmluZSBJR1BSX0lOREVYICAgICAgIDB4N0YwMDAw
MDAKKyNkZWZpbmUgSUdQUl9WQUxVRSAgICAgICAweDAwRkZGRkZGCitpbnQgaWdwcl9yZWdfcmVh
ZChzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgaW50IGluZGV4LCB1MzIgKnZhbCk7CitpbnQgaWdwcl9y
ZWdfd3JpdGUoc3RydWN0IHdmeF9kZXYgKndkZXYsIGludCBpbmRleCwgdTMyIHZhbCk7CisKKyNl
bmRpZgotLSAKMi4zMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK
