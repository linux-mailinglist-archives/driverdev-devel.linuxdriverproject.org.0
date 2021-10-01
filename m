Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C8041EA2F
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 11:55:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C632D843EB;
	Fri,  1 Oct 2021 09:55:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eQzDbc6pmaXa; Fri,  1 Oct 2021 09:55:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 15FDF84356;
	Fri,  1 Oct 2021 09:55:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 23DFC1BF473
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 09:55:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with UTF8SMTP id 0FBBF40414
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 09:55:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id KxxQT_T7TtZe for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 09:55:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by smtp2.osuosl.org (Postfix) with UTF8SMTPS id 09DC54016B
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 09:55:41 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633082141; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=tMw5Hzb3ztdNEHxY4bAev68n6seU8HT3Mf7aFuIt4P8=;
 b=IZCefyDLSsXnCjkI3G5J/2IC0/QeEkRz/xGpn3PQ9AX8EKhiSnS0yTpAzCb6RxlHQI12edbm
 NBPykG29r/U8dmpDRLs9bGT5zgLXRfk3cBTxH2taCRAmXdQK15AjWR/0AMSj9RTDel5ydihE
 qgb7XgBDeYBBuVoet447ZL/VQJA=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-west-2.postgun.com with SMTP id
 6156db1cfc6e34f8cd577951 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 01 Oct 2021 09:55:40
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 1B84AC4360C; Fri,  1 Oct 2021 09:55:40 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E8C99C4338F;
 Fri,  1 Oct 2021 09:55:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org E8C99C4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v7 13/24] wfx: add hif_tx*.c/hif_tx*.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-14-Jerome.Pouiller@silabs.com>
Date: Fri, 01 Oct 2021 12:55:33 +0300
In-Reply-To: <20210920161136.2398632-14-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Mon, 20 Sep 2021 18:11:25 +0200")
Message-ID: <87fstlkr1m.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
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
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Pali =?utf-8?Q?Roh?= =?utf-8?Q?=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SmVyb21lIFBvdWlsbGVyIDxKZXJvbWUuUG91aWxsZXJAc2lsYWJzLmNvbT4gd3JpdGVzOgoKPiBG
cm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4KPiBT
aWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5j
b20+CgpbLi4uXQoKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3Mv
c2lsYWJzL3dmeC9oaWZfdHhfbWliLmgKPiBAQCAtMCwwICsxLDQ5IEBACj4gKy8qIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8KPiArLyoKPiArICogSW1wbGVtZW50YXRp
b24gb2YgdGhlIGhvc3QtdG8tY2hpcCBNSUJzIG9mIHRoZSBoYXJkd2FyZSBBUEkuCj4gKyAqCj4g
KyAqIENvcHlyaWdodCAoYykgMjAxNy0yMDIwLCBTaWxpY29uIExhYm9yYXRvcmllcywgSW5jLgo+
ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTAsIFNULUVyaWNzc29uCj4gKyAqIENvcHlyaWdodCAoQykg
MjAxMCwgU1QtRXJpY3Nzb24gU0EKPiArICovCj4gKyNpZm5kZWYgV0ZYX0hJRl9UWF9NSUJfSAo+
ICsjZGVmaW5lIFdGWF9ISUZfVFhfTUlCX0gKPiArCj4gK3N0cnVjdCB3ZnhfdmlmOwo+ICtzdHJ1
Y3Qgc2tfYnVmZjsKPiArCj4gK2ludCBoaWZfc2V0X291dHB1dF9wb3dlcihzdHJ1Y3Qgd2Z4X3Zp
ZiAqd3ZpZiwgaW50IHZhbCk7Cj4gK2ludCBoaWZfc2V0X2JlYWNvbl93YWtldXBfcGVyaW9kKHN0
cnVjdCB3ZnhfdmlmICp3dmlmLAo+ICsJCQkJIHVuc2lnbmVkIGludCBkdGltX2ludGVydmFsLAo+
ICsJCQkJIHVuc2lnbmVkIGludCBsaXN0ZW5faW50ZXJ2YWwpOwo+ICtpbnQgaGlmX3NldF9yY3Bp
X3Jzc2lfdGhyZXNob2xkKHN0cnVjdCB3ZnhfdmlmICp3dmlmLAo+ICsJCQkJaW50IHJzc2lfdGhv
bGQsIGludCByc3NpX2h5c3QpOwo+ICtpbnQgaGlmX2dldF9jb3VudGVyc190YWJsZShzdHJ1Y3Qg
d2Z4X2RldiAqd2RldiwgaW50IHZpZl9pZCwKPiArCQkJICAgc3RydWN0IGhpZl9taWJfZXh0ZW5k
ZWRfY291bnRfdGFibGUgKmFyZyk7Cj4gK2ludCBoaWZfc2V0X21hY2FkZHIoc3RydWN0IHdmeF92
aWYgKnd2aWYsIHU4ICptYWMpOwo+ICtpbnQgaGlmX3NldF9yeF9maWx0ZXIoc3RydWN0IHdmeF92
aWYgKnd2aWYsCj4gKwkJICAgICAgYm9vbCBmaWx0ZXJfYnNzaWQsIGJvb2wgZndkX3Byb2JlX3Jl
cSk7Cj4gK2ludCBoaWZfc2V0X2JlYWNvbl9maWx0ZXJfdGFibGUoc3RydWN0IHdmeF92aWYgKnd2
aWYsIGludCB0YmxfbGVuLAo+ICsJCQkJY29uc3Qgc3RydWN0IGhpZl9pZV90YWJsZV9lbnRyeSAq
dGJsKTsKPiAraW50IGhpZl9iZWFjb25fZmlsdGVyX2NvbnRyb2woc3RydWN0IHdmeF92aWYgKnd2
aWYsCj4gKwkJCSAgICAgIGludCBlbmFibGUsIGludCBiZWFjb25fY291bnQpOwo+ICtpbnQgaGlm
X3NldF9vcGVyYXRpb25hbF9tb2RlKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBlbnVtIGhpZl9vcF9w
b3dlcl9tb2RlIG1vZGUpOwo+ICtpbnQgaGlmX3NldF90ZW1wbGF0ZV9mcmFtZShzdHJ1Y3Qgd2Z4
X3ZpZiAqd3ZpZiwgc3RydWN0IHNrX2J1ZmYgKnNrYiwKPiArCQkJICAgdTggZnJhbWVfdHlwZSwg
aW50IGluaXRfcmF0ZSk7Cj4gK2ludCBoaWZfc2V0X21mcChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwg
Ym9vbCBjYXBhYmxlLCBib29sIHJlcXVpcmVkKTsKPiAraW50IGhpZl9zZXRfYmxvY2tfYWNrX3Bv
bGljeShzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwKPiArCQkJICAgICB1OCB0eF90aWRfcG9saWN5LCB1
OCByeF90aWRfcG9saWN5KTsKPiAraW50IGhpZl9zZXRfYXNzb2NpYXRpb25fbW9kZShzdHJ1Y3Qg
d2Z4X3ZpZiAqd3ZpZiwgaW50IGFtcGR1X2RlbnNpdHksCj4gKwkJCSAgICAgYm9vbCBncmVlbmZp
ZWxkLCBib29sIHNob3J0X3ByZWFtYmxlKTsKPiAraW50IGhpZl9zZXRfdHhfcmF0ZV9yZXRyeV9w
b2xpY3koc3RydWN0IHdmeF92aWYgKnd2aWYsCj4gKwkJCQkgaW50IHBvbGljeV9pbmRleCwgdTgg
KnJhdGVzKTsKPiAraW50IGhpZl9rZWVwX2FsaXZlX3BlcmlvZChzdHJ1Y3Qgd2Z4X3ZpZiAqd3Zp
ZiwgaW50IHBlcmlvZCk7Cj4gK2ludCBoaWZfc2V0X2FycF9pcHY0X2ZpbHRlcihzdHJ1Y3Qgd2Z4
X3ZpZiAqd3ZpZiwgaW50IGlkeCwgX19iZTMyICphZGRyKTsKPiAraW50IGhpZl91c2VfbXVsdGlf
dHhfY29uZihzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgYm9vbCBlbmFibGUpOwo+ICtpbnQgaGlmX3Nl
dF91YXBzZF9pbmZvKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCB1bnNpZ25lZCBsb25nIHZhbCk7Cj4g
K2ludCBoaWZfZXJwX3VzZV9wcm90ZWN0aW9uKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBib29sIGVu
YWJsZSk7Cj4gK2ludCBoaWZfc2xvdF90aW1lKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBpbnQgdmFs
KTsKPiAraW50IGhpZl93ZXBfZGVmYXVsdF9rZXlfaWQoc3RydWN0IHdmeF92aWYgKnd2aWYsIGlu
dCB2YWwpOwo+ICtpbnQgaGlmX3J0c190aHJlc2hvbGQoc3RydWN0IHdmeF92aWYgKnd2aWYsIGlu
dCB2YWwpOwoKIndmeF8iIHByZWZpeCBtaXNzaW5nIGZyb20gcXVpdGUgYSBmZXcgZnVuY3Rpb25z
LgoKLS0gCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC13aXJlbGVz
cy9saXN0LwoKaHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9k
b2N1bWVudGF0aW9uL3N1Ym1pdHRpbmdwYXRjaGVzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZl
cnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
