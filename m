Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DA92514CC
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Aug 2020 10:59:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5A9022278E;
	Tue, 25 Aug 2020 08:59:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KVkncWryAezE; Tue, 25 Aug 2020 08:59:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B5CDA22B20;
	Tue, 25 Aug 2020 08:59:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2BF9D1BF215
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 08:59:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 28D7B8628E
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 08:59:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kCMtmD8p-KNN for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 08:59:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2053.outbound.protection.outlook.com [40.107.236.53])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 943D986044
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 08:59:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OzPUo7JFBjgAwHnWLGnO+M+H2bwFaJICcWIy/42+mSqCazPd6/AGgMbQJSNYOI6mWS8ie0JXtkTL2vPPAkXaBtOzVfVwKDy/DFXLcOQD7v9InJdwBWnQz4f6iflBp4L4FzZH4gT9Z5c+ileNrJqiu8g/srMbxWgvUbbRsU7szRTwS26Z1JaHEBnOkcguRrjSEWdveINkhCFJrpTwR9aV+NNWvx0sdIWpFwpCZnThF9+H07ovOroUHttQ/wtIt38Gqk4luxE9UtkoGX0fq5BBTMu8eMBbU7WCH++6bMt6vLmPBuah/ZPETNnfAOvGNnCjvmvSBaAMC0FifT26cCasnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lDRIEs3gitc7zye2/sfjgYma3wmW5ouz2V8A5vvj2vs=;
 b=W0YSXeNRHe9dJc0E8JGKUrD/s0sk6fXPGdGfzUQ0+5ctKZcfgcBH9Rxfm7sTz/AUcCUzDuemywSrSTWcMqZvwr1aH9Z9Cce+Yrxxjdnla2DSxs4p+ngKsHKlePhUu7+/meGySvvEpX3n/Z3l/qumOQHA2+JCb100IxOuMdZNPAIkFh6LAAgp4SwWEb7/PwdtWTyvYxpku7fDLRlGqevwAe0zlTZedxhIQJtXPn8Cvlqii4d84Wg8GfpZXBSvFEYdN3c/euLbJMX9OcWy9DHLncdNH07gb4PU1/dMDjVRXlWtBbSiVwYo5u6vtP6uCRJbgZiE1RnCjVit5s1qLcl5Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lDRIEs3gitc7zye2/sfjgYma3wmW5ouz2V8A5vvj2vs=;
 b=bg2JSyfsbG0+BWnpcnGaZvpdyiF6TUcx9UAmFV6odptWty2HoBlcSwbBNApUgUuwVVTWRrGmOBVPboQ3OlwvbQDYMiNOhQvWKnaRFrfIy9b9g2fsnMU3gJkoaSOvimuujRia/U7SGLtzCOCwEHHi0Ia80FbCPj3MALewpqqBhio=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB3501.namprd11.prod.outlook.com (2603:10b6:805:d4::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.26; Tue, 25 Aug
 2020 08:59:12 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6%4]) with mapi id 15.20.3305.026; Tue, 25 Aug 2020
 08:59:12 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH v2 11/12] staging: wfx: remove useless extra jiffy
Date: Tue, 25 Aug 2020 10:58:27 +0200
Message-Id: <20200825085828.399505-11-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200825085828.399505-1-Jerome.Pouiller@silabs.com>
References: <20200825085828.399505-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR3P192CA0002.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:102:56::7) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from 255.255.255.255 (255.255.255.255) by
 PR3P192CA0002.EURP192.PROD.OUTLOOK.COM (2603:10a6:102:56::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3326.19 via Frontend Transport; Tue, 25 Aug 2020 08:59:10 +0000
X-Mailer: git-send-email 2.28.0
X-Originating-IP: [37.71.187.125]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 757b787e-3a00-42e3-967b-08d848d52298
X-MS-TrafficTypeDiagnostic: SN6PR11MB3501:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB35013C478ED1C5B82FD462AB93570@SN6PR11MB3501.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X8uZLW9gqLwhUkiyv36dSfIUILpicZ52ssfzxePPMoFOwPxSy6Mkd9W8SaQ+TC0jzd6Uvv7OPiLZ4ctYgKgtTZxK6rlApsReFqSTuyVAqRFk54WAhocUuocZT65Z8zgDtjoFiKh738YvML8HYURf+LIOi9t3xdare7PKguao7Ejr79gu41Uy0FIqjSyLsKVQbBqoFGRng1LJMB6cqq0yxbfCCyZ70jJhMhD5D1N8TcuY0bYNf7hQQwbGWuqXD8JvxvjK8Ew239dfRgYWZFmO1rSfvIRjrtrpBff+/cKpjNqLrOjriE6bkbDY3fHQ5HzMqMKpQeqoolys+SSeczmiDw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(39840400004)(396003)(346002)(376002)(366004)(316002)(5660300002)(478600001)(107886003)(1076003)(8936002)(4744005)(83380400001)(16576012)(956004)(66556008)(66476007)(26005)(2616005)(186003)(8676002)(86362001)(66946007)(6486002)(54906003)(6666004)(36756003)(4326008)(66574015)(2906002)(52116002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: wF8nM5cndzt/Ub2hcClUHL+KKm4ZNZ9lTTCSJfcxvHcLxHZviR14sG6Av/qvBQiCCnAFUZ1/ajJFXvXAnyCEXPLISpwktSPypF8yaJNuJkNhJafKzPzO4tlsUWLelR5dg+kerX73Qfng+2JCobS7FVmjjt/fUM/DQJIdL+llNQTHNozCJanHsG/yGFQtI/zq/UJAYCpeJZ1KZJPHv77eacZVoNkzTkYLGJTkDPqr5Rr4KYs5C0sqhp/CmfHuVbBZG+8IRxkN3KUXnnL96cen7jyLv8W6lKsAtbsb7yfHC+PXO6A5VNHMLEkphHDUs5VIEkt/jU+nMxYWXsyFEi1iQwwFf20nmXXniMohAGSLG/Z2RE5JK8/eSrljyeKgA4jyWfG2JAvdAQd3nwSn1GQoGjFHyLDSGWgtq36lqX0GaesWrSL8o1YVrzgjqWJlQbj4IxsxuYdXaWVsnKoUGc8kSiVz3x+vBftqB5bu+viWh/6cz7Ufu3G/WyS3DHP+epqRDFnBu/+nxsRjXiCXoMX6BGCw7G8B3ko72MV93ixCT2jznYv+cjrtnsZb1uXSoOHblTs7O0uqAm/OEWL73vnh8Bns3ip68SM2rfw86TZAjDtZy2JPAioBZw6hEptZRpHd7QgwISQmrOP/vFPSTaeK8w==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 757b787e-3a00-42e3-967b-08d848d52298
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2020 08:59:12.1742 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lKjyPvYEjMMIGhbHOI7xCLym4qFjKqa0QEFwGDOZu7TGDtihIxeCoqKjiFfatbyEMwnxii0XKkmot8cCa5bYag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3501
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
IGluaXRpYWwgZGV2ZWxvcGVyIGhhcyBmZWFyZWQgbXNlY3NfdG9famlmZmllcygpIGNvdWxkIHJv
dW5kIGRvd24gdGhlCnJlc3VsdC4gSG93ZXZlciwgdGhlIGRvY3VtZW50YXRpb24gb2YgbXNlY3Nf
dG9famlmZmllcygpIHNheXMgdGhhdCB0aGUKcmVzdWx0IGlzIHJvdW5kZWQgdXB3YXJkLiBTbyB0
aGUgaW5jcmVtZW50IG9mIHRoZSByZXN1bHQgb2YKbXNlY3NfdG9famlmZmllcygpIGlzIG5vdCBu
ZWNlc3NhcnkuCgpTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWls
bGVyQHNpbGFicy5jb20+Ci0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9iaC5jIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9zdGFnaW5nL3dmeC9iaC5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9iaC5jCmluZGV4
IDUzYWUwYjVhYmNkZC4uMDczMDRhODBjMjliIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcv
d2Z4L2JoLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9iaC5jCkBAIC0zMyw3ICszMyw3IEBA
IHN0YXRpYyB2b2lkIGRldmljZV93YWtldXAoc3RydWN0IHdmeF9kZXYgKndkZXYpCiAJCS8vIHdh
aXRfZm9yX2NvbXBsZXRpb25fZG9uZV90aW1lb3V0KCkpLiBTbyB3ZSBoYXZlIHRvIGVtdWxhdGUK
IAkJLy8gaXQuCiAJCWlmICh3YWl0X2Zvcl9jb21wbGV0aW9uX3RpbWVvdXQoJndkZXYtPmhpZi5j
dHJsX3JlYWR5LAotCQkJCQkJbXNlY3NfdG9famlmZmllcygyKSArIDEpKQorCQkJCQkJbXNlY3Nf
dG9famlmZmllcygyKSkpCiAJCQljb21wbGV0ZSgmd2Rldi0+aGlmLmN0cmxfcmVhZHkpOwogCQll
bHNlCiAJCQlkZXZfZXJyKHdkZXYtPmRldiwgInRpbWVvdXQgd2hpbGUgd2FrZSB1cCBjaGlwXG4i
KTsKLS0gCjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
