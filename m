Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A613C22651
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 10:34:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE2EE878F0;
	Sun, 19 May 2019 08:34:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e+NaHGh-EH9A; Sun, 19 May 2019 08:34:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D447287872;
	Sun, 19 May 2019 08:34:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5648B1BF59F
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 08:34:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4D768858F5
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 08:34:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C6h2mju7l3gi for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 08:34:44 +0000 (UTC)
X-Greylist: delayed 00:10:02 by SQLgrey-1.7.6
Received: from sonic316-8.consmr.mail.gq1.yahoo.com
 (sonic316-8.consmr.mail.gq1.yahoo.com [98.137.69.32])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7406B85623
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 08:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1558254883; bh=2t+uC35MY0XiV3xbgrZAwf0z8Lq9vJrob/+EToB1094=;
 h=Subject:To:References:From:Date:In-Reply-To:From:Subject;
 b=K6fN2vFw7qM6IJjhLP5nsfanEK4pOvBF8S7aI9n8vaS041ZpgZyqV0MmyWdokV+cP29EA/XC1SIlC5kkAyINKLOJLPp9JoNa9PW0+rcORCKqNrFwNJPxBRgrpConyiJvekj5xmSxr+F0OkKMzA7M9+iq2xQ9W8VhSFtXa5t20aGaAnFfzzZ3BXw68UtkTX3lforEgNYrdGYnZWkoNzCZ3ce4YoqcfSNdT32UQaw9BtSvEaY6gJ/4iSRItEI//AY/1muXqpBeojGkTKVLGKUTo6bymQkm5kE40zVN8xz/DfUepauuQ209JBFg6IgkA3RRdnoSZN8ftBRMoOV9Oi0ArQ==
X-YMail-OSG: joWqGkEVM1ndzME2ddhS5Schq4Bwkix4UKz8pgMAK5DLZelDAekD2XkHfaMfw8Q
 OzYSCuG5npoEadGCIg_r2cj2RiprVbvhkxXVvXxrc72logd1h.KXG34zsgQT8h2CffT6gA0sh_iX
 P_pvaPLSLDcJoVJDLlxr_GLlGDLdC10AQA33z46grLn5DwDZYAwzx3NcKVAq0EgH_kWyyuhrVFa4
 UF_ESD27.aP9rkBCiiShk_1BBqQFvdYYnONu5vK0s6vyp2wHbFGtfchsNmjj358xyiTL4.4LRw2t
 05PYO5dI9Hmul6h3ebAFBbsOgHDBzOAXEF9nnnAbOJfUsQ1oITy5wadKD.0_prlViuNWV3CKdAZk
 I8OhtOcDxG717Xf7vLheL9WnMkKtRN4mGy3xGmzoHbGEFM77hgOzN0AlDMYOfALIqMo_nxtDfMLx
 nZhBf9Nd36UZVoSsv3zGiXEvUC_LpCawwmHEdqTk1uA5Cavil.Jc8WX987ZcPhdNGDgNIZ4Qhr_T
 BBlArM7RljhXiy2UShY4hoBMDOUXk3z_p6pcUYFTit5ZQjKcRUOfgqXMTa5iHySZydeGa40uPBjD
 jw4j6xIZ2VOh3hHjnlrapnu_oB5fqzhTM7_v3g051v5lLAxh9mQXeFqF3fT0XlBNxjKrEN901iIq
 UZS0s23xmFnNdtfLaYfX8h_ZkVmYwz22igV663l30XJCghM4dlTJ0qWxaxxTArxHCCTwoXpRrN6L
 CjbjocAwWCw9KSJCtyexVudpSouOJ0Q2jKTjbCAH_jXm1A_MFvmUVahYVOb_fFuACgQ8YwSMJyAS
 HLoKvR54u4eoFDD_T5yHBt15hYmWgkwLDPyKbRgT0o_Db44LlY.mEmBPiXpFxW4ZJtBjOQm3Mofk
 MvJEXqgXbhLu3qTO2i6l2WBOC0e7eRAfgF4vbg49vf7jbyQpTNdcnysbZLvATSOBFhK6Q84Xxrb3
 1zimZEafJJf8H7ityhFpZh8mDGR7AbfBvitOiOXWPjs5TSqRhyAHmXfEbz67JLOSqPPw_eoiJdxO
 E3krx1yl3Yhb3GfbBfsA3BeYtZ0Hy7zZp1tL9T_jHvO91ACD4b5pcu5NkykFGnpLPerxvaYoCYjW
 VjvoeGj1yY9LmTMFstumMTAy.RlvYSI__PLbjwX.hTY4PvamPVe2mdP6EJoI40RD6fcugwGqsxtU
 Yqxve11j0kdXE1DL3rli.agOnYZIDydfcz0npEE_AGQU-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic316.consmr.mail.gq1.yahoo.com with HTTP; Sun, 19 May 2019 08:34:43 +0000
Received: from 183.156.112.94 (EHLO [192.168.199.101]) ([183.156.112.94])
 by smtp426.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 54983f021bf3a240fddb8083defab91e; 
 Sun, 19 May 2019 08:24:40 +0000 (UTC)
Subject: Re: [PATCH] staging: erofs: fix Warning Use BUG_ON instead of if
 condition followed by BUG
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-erofs@lists.ozlabs.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20190518173331.GA1069@hari-Inspiron-1545>
From: Gao Xiang <hsiangkao@aol.com>
Message-ID: <7b074b9d-04f9-781b-4ea3-1a1017eceb38@aol.com>
Date: Sun, 19 May 2019 16:24:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190518173331.GA1069@hari-Inspiron-1545>
Content-Language: en-US
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgSGFyaXByYXNhZCwKCk9uIDIwMTkvNS8xOSDkuIrljYgxOjMzLCBIYXJpcHJhc2FkIEtlbGFt
IHdyb3RlOgo+IGZpeCBiZWxvdyB3YXJuaW5nIHJlcG9ydGVkIGJ5ICBjb2NjaWNoZWNrCj4gCj4g
ZHJpdmVycy9zdGFnaW5nL2Vyb2ZzL3VuemlwX3BhZ2V2ZWMuaDo3NDoyLTU6IFdBUk5JTkc6IFVz
ZSBCVUdfT04KPiBpbnN0ZWFkIG9mIGlmIGNvbmRpdGlvbiBmb2xsb3dlZCBieSBCVUcuCj4gCj4g
U2lnbmVkLW9mZi1ieTogSGFyaXByYXNhZCBLZWxhbSA8aGFyaXByYXNhZC5rZWxhbUBnbWFpbC5j
b20+Cj4gLS0tCj4gIGRyaXZlcnMvc3RhZ2luZy9lcm9mcy91bnppcF9wYWdldmVjLmggfCAzICst
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9lcm9mcy91bnppcF9wYWdldmVjLmggYi9kcml2
ZXJzL3N0YWdpbmcvZXJvZnMvdW56aXBfcGFnZXZlYy5oCj4gaW5kZXggZjM3ZDhmZC4uMGY2MWM1
NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvZXJvZnMvdW56aXBfcGFnZXZlYy5oCj4g
KysrIGIvZHJpdmVycy9zdGFnaW5nL2Vyb2ZzL3VuemlwX3BhZ2V2ZWMuaAo+IEBAIC03MCw4ICs3
MCw3IEBAIHpfZXJvZnNfcGFnZXZlY19jdG9yX25leHRfcGFnZShzdHJ1Y3Qgel9lcm9mc19wYWdl
dmVjX2N0b3IgKmN0b3IsCj4gIAkJCXJldHVybiB0YWdwdHJfdW5mb2xkX3B0cih0KTsKPiAgCX0K
PiAgCj4gLQlpZiAodW5saWtlbHkobnIgPj0gY3Rvci0+bnIpKQo+IC0JCUJVRygpOwo+ICsJQlVH
X09OKG5yID49IGN0b3ItPm5yKTsKClRoYW5rcyBmb3IgeW91ciByZXBvcnQuIEkgc3VnZ2VzdCB0
byB1c2UgREJHX0JVR09OIGZvciB0aGlzIGNhc2UsIGxldCBtZQpzZW5kIGFub3RoZXIgdmVyc2lv
biBmb3IgdGhpcyBjYXNlLgoKVGhhbmtzLApHYW8gWGlhbmcKCj4gIAo+ICAJcmV0dXJuIE5VTEw7
Cj4gIH0KPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==
