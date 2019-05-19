Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1501E22687
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 11:50:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6936C865D3;
	Sun, 19 May 2019 09:50:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uwzN+Bfnt-Qt; Sun, 19 May 2019 09:50:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EDA1285DA0;
	Sun, 19 May 2019 09:50:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 361251BF238
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 09:50:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3237486005
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 09:50:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8-5kcJknmfZ3 for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 09:50:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic311-23.consmr.mail.gq1.yahoo.com
 (sonic311-23.consmr.mail.gq1.yahoo.com [98.137.65.204])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C30E385DA0
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 09:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1558259449; bh=uOB1p/mp8q6x2hlmQ4GnENeFke59y23UCzRnpXW2yKA=;
 h=Subject:To:References:Cc:From:Date:In-Reply-To:From:Subject;
 b=KegmFs1c3EXfPugzTcdCmS2T4W30ic5SO9squz3FfnuKml4bz2V9v1vp5dOBjDz/K5cEwLntCnzjyf+hcAn/XAxSwfxDZ37+dFQKNnyyoH7nyQcH5oes3woZcer/94EVjrUv6jhksqJZ3YAtA+pwfrSEzVFm7ekRm0/92lbTmzsOZzgTjDK9uSw++MEuwiiHAoM8J1nrlY8HcEEpjz8Jbvz+s7sedud7ull+DYgFUQUs0Dy91PlsvHDn1FjUeVYLXjcPauoTygnwMmLy4GtT/NOEiFW+MrPeqVDYF1PJg75qHkS+IopIm79CLytCboq6kbO2YIdO4uSBce7MnxFe2g==
X-YMail-OSG: NL2pl8sVM1n9O.PngIHGRrO0E08jMfeawv4qhea1D5ZhZ4_g0WRNIpl25H3ngzF
 _X5tOjifiO5tIZ1.Z0z7WfLNotmEKuNk7QFUzKxuZ7m9r94jAcLouzYgCEtqwaqkpPPIji5yHKwm
 5tjRY3b8urWoJa4bmg8rivIXhsicQ0cLjBaGvn5i.3B_BlywTiytmw1M4h_2S_Jn8XB.fyqEnCbR
 tdLw2O.nJWIbx.nysdvdhElR79K5TC5DC95syrYTEFkcijWWjNOFkK9HMxJ0PQGT0tDZkngwNjFs
 RHtmQU_QQWwZCXLYkc7DJPeqyfZCRc.G8ZKB4Wm8Zt.aHxeregCkm3YM_JVl9rfQsjfAIFp1m2zV
 5tPTrWLjXm6rTzz0pVWbUDaXOc2msQFAglBiyOltyu.pc091RQtTQueATmX6AGfLb8Wy04CKCiQE
 5vmELBFTjN9bIc3RafOKIyXg9TMT4SxxdupYykrCb74e39.Dfmo7Vymzv2E4hnupJsNwphRIOqcU
 ev_66FxNEd5RApTKeaBi1ZwEnXQL_6fWpFx5jAr80K2sULwGaD5aCiaPLpZhgfE3Yq1Idz5_oj2h
 U5xi.DBfnAX.MMN3S5VWXvdomAJLQS83gRqwAVpHBFzs8Fk.nRi8ET7dhKZTwLfM2xi8kgIHeh1b
 W27Te0__8CdMQykZtzXx0YqIbz6EndqIl9aXKFztBshNmHt4yAIIAbIQ0faDvl4bsoGEBG4QK7fc
 XFgbYw.DGf_bo7VLu7ufb8UV4Ic6eW7SNgjpfDV9b6gZ8qaCCRO4obnMAnnirZRjRBMTDduFROJO
 qBeG89_7MopaWnV5PkZ3AGmEo4KuiFJUabKBCCCf_xLW.ZwL4nysOnh_2JKj7Ok5LCPmy0kyVUa1
 yFD6V9g55UXkcqmUMBhNN9d4GggYi0wxrQqLnATSNV_aFVuMRV8G_vyXKDLSvEMjp4OjNDgMCMQE
 QzRO2hMU0EQ1tKIh3LcwtsZtNQr0SG62WLTkJ8QyDI4SPOMsTmU0SuUejXHoSB1tXnAn0dw.LvKt
 9C4H.J7Skv4fuHGXHsmthgodNcHnNibyJQsNGlAIxZwS3GJ4Jf3P9WLa2FXu2.SpiIcXDFpWXma9
 aXQNz2QpcEedzDHp28XKdCjjn0suz8Mi7NAVm1jGlw6H.3wjNg0ZdQPzxbapggsW5d2.cfU92QQZ
 Lr1Q8h7.xlrV36UPaXsWW6YN3cKD9ovMeQqI8LXIosY_MDVgspkA-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic311.consmr.mail.gq1.yahoo.com with HTTP; Sun, 19 May 2019 09:50:49 +0000
Received: from 183.156.112.94 (EHLO [192.168.199.101]) ([183.156.112.94])
 by smtp404.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 e3bef9504fad3174dbb676844f94f803; 
 Sun, 19 May 2019 09:50:48 +0000 (UTC)
Subject: Re: [Patch v2] staging: erofs: fix Warning Use BUG_ON instead of if
 condition followed by BUG
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
References: <20190519093440.GA16838@hari-Inspiron-1545>
From: Gao Xiang <hsiangkao@aol.com>
Message-ID: <b32e6bca-60ec-2004-f1d6-16d2b8a478ae@aol.com>
Date: Sun, 19 May 2019 17:50:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190519093440.GA16838@hari-Inspiron-1545>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chao Yu <yuchao0@huawei.com>, linux-kernel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpPbiAyMDE5LzUvMTkg5LiL5Y2INTozNCwgSGFyaXByYXNhZCBLZWxhbSB3cm90ZToKPiBmaXgg
YmVsb3cgd2FybmluZyByZXBvcnRlZCBieSAgY29jY2ljaGVjawo+IAo+IGRyaXZlcnMvc3RhZ2lu
Zy9lcm9mcy91bnppcF9wYWdldmVjLmg6NzQ6Mi01OiBXQVJOSU5HOiBVc2UgQlVHX09OCj4gaW5z
dGVhZCBvZiBpZiBjb25kaXRpb24gZm9sbG93ZWQgYnkgQlVHLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IEhhcmlwcmFzYWQgS2VsYW0gPGhhcmlwcmFzYWQua2VsYW1AZ21haWwuY29tPgo+IC0tLS0tCj4g
Q2hhbmdlcyBpbiB2MjoKPiAgIC0gcmVwbGFjZSBCVUdfT04gd2l0aCAgREJHX0JVR09OCj4gLS0t
LS0KPiAtLS0KPiAgZHJpdmVycy9zdGFnaW5nL2Vyb2ZzL3VuemlwX3BhZ2V2ZWMuaCB8IDMgKy0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2Vyb2ZzL3VuemlwX3BhZ2V2ZWMuaCBiL2RyaXZl
cnMvc3RhZ2luZy9lcm9mcy91bnppcF9wYWdldmVjLmgKPiBpbmRleCBmMzdkOGZkLi43OTM4ZWUz
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9lcm9mcy91bnppcF9wYWdldmVjLmgKPiAr
KysgYi9kcml2ZXJzL3N0YWdpbmcvZXJvZnMvdW56aXBfcGFnZXZlYy5oCj4gQEAgLTcwLDggKzcw
LDcgQEAgel9lcm9mc19wYWdldmVjX2N0b3JfbmV4dF9wYWdlKHN0cnVjdCB6X2Vyb2ZzX3BhZ2V2
ZWNfY3RvciAqY3RvciwKPiAgCQkJcmV0dXJuIHRhZ3B0cl91bmZvbGRfcHRyKHQpOwo+ICAJfQo+
ICAKCkknZCBsaWtlIHRvIGRlbGV0ZSB0aGlzIGxpbmUKCj4gLQlpZiAodW5saWtlbHkobnIgPj0g
Y3Rvci0+bnIpKQo+IC0JCUJVRygpOwo+ICsJREJHX0JVR09OKG5yID49IGN0b3ItPm5yKTsKPiAg
CgphbmQgdGhpcyBsaW5lLi4gSSBoYXZlIGFscmVhZHkgc2VudCBhIG5ldyBwYXRjaCBiYXNlZCBv
biB5b3VyIHYxIHBhdGNoLApjb3VsZCB5b3UgcGxlYXNlIGNoZWNrIGl0IG91dCBpZiBpdCBpcyBh
Y2NlcHRhYmxlIGZvciB5b3U/IDopCgpUaGFua3MsCkdhbyBYaWFuZwoKPiAgCXJldHVybiBOVUxM
Owo+ICB9Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9k
cml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRl
di1kZXZlbAo=
