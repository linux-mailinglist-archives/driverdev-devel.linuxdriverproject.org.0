Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD5319AAEE
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Apr 2020 13:39:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B3F9B88035;
	Wed,  1 Apr 2020 11:39:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rQLXTC6CXXZT; Wed,  1 Apr 2020 11:39:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3C49A87F81;
	Wed,  1 Apr 2020 11:39:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D11121BF484
 for <devel@linuxdriverproject.org>; Wed,  1 Apr 2020 11:39:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C880A20109
 for <devel@linuxdriverproject.org>; Wed,  1 Apr 2020 11:39:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cWMgl1yvYsHm for <devel@linuxdriverproject.org>;
 Wed,  1 Apr 2020 11:39:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2049.outbound.protection.outlook.com [40.107.237.49])
 by silver.osuosl.org (Postfix) with ESMTPS id A8F382000B
 for <devel@driverdev.osuosl.org>; Wed,  1 Apr 2020 11:39:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AWOLof8BeUkcAShp8UtzVX3QWAvw0/wvLbjIA/TzzqcE/wA12p1UiPFOKvUvdngvWskKpv4g/A7aMiqqFq+oVGzaKAFJRkq8ky41q8VIom/gOxFZhxtQsqBXA2U4k8AV8n8E+YuAyWWTsCj4IYeyhqe2KRgj6XBm938WrEDUquCwJxHU/Vl1hKYhvPQKSrToRmuxMR8mDbzduVFFQSGt8MByVDVj1vIiYzot5zngZUK++JnY4l74GUt33VJlgN0CyWpKyTT6psTCVNjPtUxkbaDOmlUNAtu6VCVkSXOiEf82BgYl74wxlFr6xaMFdenGxtnMrsVEyVR1+1SkSwj//A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zwnnlp0rg2bPpdzDiOZIrKpP7GITQwa8v5Y5n3ZgLMM=;
 b=gECgh3m+3hzPDMKDxrzUCystlp+oyeEQkJlVjERpR06GgMgMW8mBOEzX5oAI3H+PWKZWNOF6IoEnrlgT/TNyqQo1A39j9H4eDAlZzK1qqbLKXev74g0b6jbB4/oda+fvOtm8V9qVF91u4w/prR96yJ9FpF7EQ8psfh55vOXIrr2WYpgoe8g15d4AxK0ipT/Zb+9paU6pm+kfRBiN7o/7ex4txkyS/ZcJ/x4/arNyAH/S/yIEe1Hzhe4MNFx1/51Nr1gZl0gIyS22EOg9Mn1KBDAD5umgkmijQG8hn34lyCn/gYxfs1QZOMZnCvOONf+qxncBfUd2DFvfkJiIb/JO8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zwnnlp0rg2bPpdzDiOZIrKpP7GITQwa8v5Y5n3ZgLMM=;
 b=FzSP18HFStzfflJ8FOBKnByETLwdMXwvZK1mC+xyPyhj04EnLlOAqdof/b3xkWDQ3iQALZ3Y0i2j+MHiOOzFoIbygH1ElvH8YuWMjECcPNOfBkolQaZox2yXHMPb9pmxDfdks/axDrVRgimE2BdBQ96AxcxC0qBSyYlenXcrr9c=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (2603:10b6:208:13f::22)
 by MN2PR11MB4285.namprd11.prod.outlook.com (2603:10b6:208:191::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Wed, 1 Apr
 2020 11:04:50 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3%7]) with mapi id 15.20.2856.019; Wed, 1 Apr 2020
 11:04:50 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 15/32] staging: wfx: drop useless link_map_cache
Date: Wed,  1 Apr 2020 13:03:48 +0200
Message-Id: <20200401110405.80282-16-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200401110405.80282-1-Jerome.Pouiller@silabs.com>
References: <20200401110405.80282-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: SN4PR0501CA0156.namprd05.prod.outlook.com
 (2603:10b6:803:2c::34) To MN2PR11MB4063.namprd11.prod.outlook.com
 (2603:10b6:208:13f::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (2a01:e35:2435:66a0:1265:30ff:fefd:6e7f) by
 SN4PR0501CA0156.namprd05.prod.outlook.com (2603:10b6:803:2c::34) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.9 via Frontend
 Transport; Wed, 1 Apr 2020 11:04:48 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [2a01:e35:2435:66a0:1265:30ff:fefd:6e7f]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f9415d82-8b5a-4082-742f-08d7d62c7f6a
X-MS-TrafficTypeDiagnostic: MN2PR11MB4285:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR11MB4285510374572324547BA34393C90@MN2PR11MB4285.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1923;
X-Forefront-PRVS: 03607C04F0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4063.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(136003)(366004)(346002)(376002)(39850400004)(396003)(7696005)(8676002)(1076003)(16526019)(186003)(5660300002)(86362001)(4326008)(66574012)(52116002)(478600001)(66946007)(66476007)(54906003)(36756003)(8936002)(316002)(81156014)(6486002)(2906002)(66556008)(107886003)(81166006)(2616005);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KPgPMW7QC/X9UXQ5QF5Mc6H0uFKZs99yEaRKvfc5SaGR5rbgFEykn/7/8P4B5Qb2n9pEXEBlls1/NdhaDLyDHlCPL/r6SyIkg1SczLV2KcSl62N3RrMHqDGbCHHsUvCsFCI8sFcIBQaQP25Yfz9/6rTwb0f6h0bCwbuHae5P3w5nuIeuXfHR96+LfZtIhJ1sPsSqi4oQuQP0Y1HjOc3JYHGOPz0JTp7PqpVJSuNn+AQa42c7MDh5NYyB0WKhDcNzYiOauWHKbWCk5TscHLssoXIgPNA1oFvr9vVGpQvPygCXSNR3Ga1e3m1RCo+GVDIjBRm4FBTMNgKKvAfOLTXr5Kb652x1RfGc8QNQgjwT9Bi/wxO2dISDWL+78R8Uusm0wLKpdCR6kpmq00hRkfwe35Ir/a7S4V333ouCryOLOpnwUG9lXQG2TaKznosSfYw+
X-MS-Exchange-AntiSpam-MessageData: jOB+flDVkLIzuFuEJkZAvwjzoq3vsb3gGI1FRPUv0qAZ37+LE89JVS2ljsYC3rQG0X95QpKwyBBra9pUT0Ow3rdsN06ffEMbvc3LQC9UqTTZDOvAnOUrKxnem+O1vY9zlqNJKN3nAQfoL7OkqpbfR5/BAalStn65BAeZsVY2FOYT8zXVPSmNAQ1qlnt6kdHgKcoKDkhXLU+VR96AF3lFsQ==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9415d82-8b5a-4082-742f-08d7d62c7f6a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2020 11:04:50.3051 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q/DfLUB9YtTtRUfpAjg3Hjw10HsYiWHvRLX0aO0eF4AO+dU+XZ8TMOskyHH1IeYeDjTERB20O4jobIEh6X6/YQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4285
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKRHJp
dmVyIGRvZXMgbm90IHVzZSBsaW5rX21hcF9jYWNoZSBhbnltb3JlLiBTbyB3ZSBjYW4gZHJvcCBp
dC4gSW4gYWRkLAp3ZSBkbyBub3QgaGF2ZSB0byBrZWVwIHRoaXMgY291bnRlciBpbiBzeW5jIHdp
dGggc2tiX3F1ZXVlIGl0ZW0sIHNvIHdlCmNhbiBkcm9wIGV4cGxpY2l0IHNwaW5fbG9ja3MuCgpT
aWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5j
b20+Ci0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5jIHwgNjAgKysrKysrKystLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5oIHwgIDMg
LS0KIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNTEgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5jIGIvZHJpdmVycy9zdGFnaW5n
L3dmeC9xdWV1ZS5jCmluZGV4IDZmYThmNGUwODNkMy4uODJjMjc4MWIxZjc4IDEwMDY0NAotLS0g
YS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3F1ZXVlLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9x
dWV1ZS5jCkBAIC05NCwyMCArOTQsMTAgQEAgdm9pZCB3ZnhfdHhfcXVldWVzX3dhaXRfZW1wdHlf
dmlmKHN0cnVjdCB3ZnhfdmlmICp3dmlmKQogc3RhdGljIHZvaWQgd2Z4X3R4X3F1ZXVlX2NsZWFy
KHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBzdHJ1Y3Qgd2Z4X3F1ZXVlICpxdWV1ZSwKIAkJCSAgICAg
ICBzdHJ1Y3Qgc2tfYnVmZl9oZWFkICpnY19saXN0KQogewotCWludCBpOwogCXN0cnVjdCBza19i
dWZmICppdGVtOwotCXN0cnVjdCB3ZnhfcXVldWVfc3RhdHMgKnN0YXRzID0gJndkZXYtPnR4X3F1
ZXVlX3N0YXRzOwogCi0Jc3Bpbl9sb2NrX2JoKCZxdWV1ZS0+cXVldWUubG9jayk7Ci0Jd2hpbGUg
KChpdGVtID0gX19za2JfZGVxdWV1ZSgmcXVldWUtPnF1ZXVlKSkgIT0gTlVMTCkKKwl3aGlsZSAo
KGl0ZW0gPSBza2JfZGVxdWV1ZSgmcXVldWUtPnF1ZXVlKSkgIT0gTlVMTCkKIAkJc2tiX3F1ZXVl
X2hlYWQoZ2NfbGlzdCwgaXRlbSk7Ci0Jc3Bpbl9sb2NrX25lc3RlZCgmc3RhdHMtPnBlbmRpbmcu
bG9jaywgMSk7Ci0JZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoc3RhdHMtPmxpbmtfbWFwX2Nh
Y2hlKTsgKytpKSB7Ci0JCXN0YXRzLT5saW5rX21hcF9jYWNoZVtpXSAtPSBxdWV1ZS0+bGlua19t
YXBfY2FjaGVbaV07Ci0JCXF1ZXVlLT5saW5rX21hcF9jYWNoZVtpXSA9IDA7Ci0JfQotCXNwaW5f
dW5sb2NrKCZzdGF0cy0+cGVuZGluZy5sb2NrKTsKLQlzcGluX3VubG9ja19iaCgmcXVldWUtPnF1
ZXVlLmxvY2spOwogfQogCiB2b2lkIHdmeF90eF9xdWV1ZXNfY2xlYXIoc3RydWN0IHdmeF9kZXYg
KndkZXYpCkBAIC0xNjMsMjggKzE1MywxNSBAQCBpbnQgd2Z4X3R4X3F1ZXVlX2dldF9udW1fcXVl
dWVkKHN0cnVjdCB3ZnhfcXVldWUgKnF1ZXVlKQogdm9pZCB3ZnhfdHhfcXVldWVfcHV0KHN0cnVj
dCB3ZnhfZGV2ICp3ZGV2LCBzdHJ1Y3Qgd2Z4X3F1ZXVlICpxdWV1ZSwKIAkJICAgICAgc3RydWN0
IHNrX2J1ZmYgKnNrYikKIHsKLQlzdHJ1Y3Qgd2Z4X3F1ZXVlX3N0YXRzICpzdGF0cyA9ICZ3ZGV2
LT50eF9xdWV1ZV9zdGF0czsKLQlzdHJ1Y3Qgd2Z4X3R4X3ByaXYgKnR4X3ByaXYgPSB3Znhfc2ti
X3R4X3ByaXYoc2tiKTsKLQotCVdBUk4odHhfcHJpdi0+bGlua19pZCA+PSBBUlJBWV9TSVpFKHN0
YXRzLT5saW5rX21hcF9jYWNoZSksICJpbnZhbGlkIGxpbmstaWQgdmFsdWUiKTsKLQlzcGluX2xv
Y2tfYmgoJnF1ZXVlLT5xdWV1ZS5sb2NrKTsKLQlfX3NrYl9xdWV1ZV90YWlsKCZxdWV1ZS0+cXVl
dWUsIHNrYik7Ci0KLQkrK3F1ZXVlLT5saW5rX21hcF9jYWNoZVt0eF9wcml2LT5saW5rX2lkXTsK
LQotCXNwaW5fbG9ja19uZXN0ZWQoJnN0YXRzLT5wZW5kaW5nLmxvY2ssIDEpOwotCSsrc3RhdHMt
PmxpbmtfbWFwX2NhY2hlW3R4X3ByaXYtPmxpbmtfaWRdOwotCXNwaW5fdW5sb2NrKCZzdGF0cy0+
cGVuZGluZy5sb2NrKTsKLQlzcGluX3VubG9ja19iaCgmcXVldWUtPnF1ZXVlLmxvY2spOworCXNr
Yl9xdWV1ZV90YWlsKCZxdWV1ZS0+cXVldWUsIHNrYik7CiB9CiAKIHN0YXRpYyBzdHJ1Y3Qgc2tf
YnVmZiAqd2Z4X3R4X3F1ZXVlX2dldChzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwKIAkJCQkJc3RydWN0
IHdmeF9xdWV1ZSAqcXVldWUsCiAJCQkJCXUzMiBsaW5rX2lkX21hcCkKIHsKLQlzdHJ1Y3Qgc2tf
YnVmZiAqc2tiID0gTlVMTDsKLQlzdHJ1Y3Qgc2tfYnVmZiAqaXRlbTsKIAlzdHJ1Y3Qgd2Z4X3F1
ZXVlX3N0YXRzICpzdGF0cyA9ICZ3ZGV2LT50eF9xdWV1ZV9zdGF0czsKKwlzdHJ1Y3Qgc2tfYnVm
ZiAqaXRlbSwgKnNrYiA9IE5VTEw7CiAJc3RydWN0IHdmeF90eF9wcml2ICp0eF9wcml2OwogCiAJ
c3Bpbl9sb2NrX2JoKCZxdWV1ZS0+cXVldWUubG9jayk7CkBAIC0xOTUsMzkgKzE3MiwyOCBAQCBz
dGF0aWMgc3RydWN0IHNrX2J1ZmYgKndmeF90eF9xdWV1ZV9nZXQoc3RydWN0IHdmeF9kZXYgKndk
ZXYsCiAJCQlicmVhazsKIAkJfQogCX0KKwlzcGluX3VubG9ja19iaCgmcXVldWUtPnF1ZXVlLmxv
Y2spOwogCWlmIChza2IpIHsKKwkJc2tiX3VubGluayhza2IsICZxdWV1ZS0+cXVldWUpOwogCQl0
eF9wcml2ID0gd2Z4X3NrYl90eF9wcml2KHNrYik7CiAJCXR4X3ByaXYtPnhtaXRfdGltZXN0YW1w
ID0ga3RpbWVfZ2V0KCk7Ci0JCV9fc2tiX3VubGluayhza2IsICZxdWV1ZS0+cXVldWUpOwotCQkt
LXF1ZXVlLT5saW5rX21hcF9jYWNoZVt0eF9wcml2LT5saW5rX2lkXTsKLQotCQlzcGluX2xvY2tf
bmVzdGVkKCZzdGF0cy0+cGVuZGluZy5sb2NrLCAxKTsKLQkJX19za2JfcXVldWVfdGFpbCgmc3Rh
dHMtPnBlbmRpbmcsIHNrYik7Ci0JCS0tc3RhdHMtPmxpbmtfbWFwX2NhY2hlW3R4X3ByaXYtPmxp
bmtfaWRdOwotCQlzcGluX3VubG9jaygmc3RhdHMtPnBlbmRpbmcubG9jayk7CisJCXNrYl9xdWV1
ZV90YWlsKCZzdGF0cy0+cGVuZGluZywgc2tiKTsKKwkJaWYgKHNrYl9xdWV1ZV9lbXB0eSgmcXVl
dWUtPnF1ZXVlKSkKKwkJCXdha2VfdXAoJnN0YXRzLT53YWl0X2xpbmtfaWRfZW1wdHkpOworCQly
ZXR1cm4gc2tiOwogCX0KLQlzcGluX3VubG9ja19iaCgmcXVldWUtPnF1ZXVlLmxvY2spOwotCWlm
IChza2JfcXVldWVfZW1wdHkoJnF1ZXVlLT5xdWV1ZSkpCi0JCXdha2VfdXAoJnN0YXRzLT53YWl0
X2xpbmtfaWRfZW1wdHkpOwogCXJldHVybiBza2I7CiB9CiAKIGludCB3ZnhfcGVuZGluZ19yZXF1
ZXVlKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQogewogCXN0cnVj
dCB3ZnhfcXVldWVfc3RhdHMgKnN0YXRzID0gJndkZXYtPnR4X3F1ZXVlX3N0YXRzOwotCXN0cnVj
dCB3ZnhfdHhfcHJpdiAqdHhfcHJpdiA9IHdmeF9za2JfdHhfcHJpdihza2IpOwogCXN0cnVjdCB3
ZnhfcXVldWUgKnF1ZXVlID0gJndkZXYtPnR4X3F1ZXVlW3NrYl9nZXRfcXVldWVfbWFwcGluZyhz
a2IpXTsKIAogCVdBUk5fT04oc2tiX2dldF9xdWV1ZV9tYXBwaW5nKHNrYikgPiAzKTsKLQlzcGlu
X2xvY2tfYmgoJnF1ZXVlLT5xdWV1ZS5sb2NrKTsKLQkrK3F1ZXVlLT5saW5rX21hcF9jYWNoZVt0
eF9wcml2LT5saW5rX2lkXTsKIAotCXNwaW5fbG9ja19uZXN0ZWQoJnN0YXRzLT5wZW5kaW5nLmxv
Y2ssIDEpOwotCSsrc3RhdHMtPmxpbmtfbWFwX2NhY2hlW3R4X3ByaXYtPmxpbmtfaWRdOwotCV9f
c2tiX3VubGluayhza2IsICZzdGF0cy0+cGVuZGluZyk7Ci0Jc3Bpbl91bmxvY2soJnN0YXRzLT5w
ZW5kaW5nLmxvY2spOwotCV9fc2tiX3F1ZXVlX3RhaWwoJnF1ZXVlLT5xdWV1ZSwgc2tiKTsKLQlz
cGluX3VubG9ja19iaCgmcXVldWUtPnF1ZXVlLmxvY2spOworCXNrYl91bmxpbmsoc2tiLCAmc3Rh
dHMtPnBlbmRpbmcpOworCXNrYl9xdWV1ZV90YWlsKCZxdWV1ZS0+cXVldWUsIHNrYik7CiAJcmV0
dXJuIDA7CiB9CiAKQEAgLTIzNSw5ICsyMDEsNyBAQCBpbnQgd2Z4X3BlbmRpbmdfcmVtb3ZlKHN0
cnVjdCB3ZnhfZGV2ICp3ZGV2LCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQogewogCXN0cnVjdCB3Znhf
cXVldWVfc3RhdHMgKnN0YXRzID0gJndkZXYtPnR4X3F1ZXVlX3N0YXRzOwogCi0Jc3Bpbl9sb2Nr
X2JoKCZzdGF0cy0+cGVuZGluZy5sb2NrKTsKLQlfX3NrYl91bmxpbmsoc2tiLCAmc3RhdHMtPnBl
bmRpbmcpOwotCXNwaW5fdW5sb2NrX2JoKCZzdGF0cy0+cGVuZGluZy5sb2NrKTsKKwlza2JfdW5s
aW5rKHNrYiwgJnN0YXRzLT5wZW5kaW5nKTsKIAl3Znhfc2tiX2R0b3Iod2Rldiwgc2tiKTsKIAog
CXJldHVybiAwOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5oIGIvZHJp
dmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5oCmluZGV4IDU4ZGEyMTZkNDdkZC4uZGQxNDFjYjRiZjYz
IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3F1ZXVlLmgKKysrIGIvZHJpdmVycy9z
dGFnaW5nL3dmeC9xdWV1ZS5oCkBAIC0xNiwxOCArMTYsMTUgQEAKICNkZWZpbmUgV0ZYX0xJTktf
SURfTk9fQVNTT0MgICAgICAxNQogI2RlZmluZSBXRlhfTElOS19JRF9BRlRFUl9EVElNICAgIChX
RlhfTElOS19JRF9OT19BU1NPQyArIDEpCiAjZGVmaW5lIFdGWF9MSU5LX0lEX1VBUFNEICAgICAg
ICAgKFdGWF9MSU5LX0lEX05PX0FTU09DICsgMikKLSNkZWZpbmUgV0ZYX0xJTktfSURfTUFYICAg
ICAgICAgICAoV0ZYX0xJTktfSURfTk9fQVNTT0MgKyAzKQogCiBzdHJ1Y3Qgd2Z4X2RldjsKIHN0
cnVjdCB3ZnhfdmlmOwogCiBzdHJ1Y3Qgd2Z4X3F1ZXVlIHsKIAlzdHJ1Y3Qgc2tfYnVmZl9oZWFk
CXF1ZXVlOwotCWludAkJCWxpbmtfbWFwX2NhY2hlW1dGWF9MSU5LX0lEX01BWF07CiB9OwogCiBz
dHJ1Y3Qgd2Z4X3F1ZXVlX3N0YXRzIHsKLQlpbnQJCQlsaW5rX21hcF9jYWNoZVtXRlhfTElOS19J
RF9NQVhdOwogCXN0cnVjdCBza19idWZmX2hlYWQJcGVuZGluZzsKIAl3YWl0X3F1ZXVlX2hlYWRf
dAl3YWl0X2xpbmtfaWRfZW1wdHk7CiB9OwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
