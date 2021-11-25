Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D07C45DD74
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Nov 2021 16:29:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9882E8276E;
	Thu, 25 Nov 2021 15:29:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MTn24P3BVr_9; Thu, 25 Nov 2021 15:29:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5E6F826C8;
	Thu, 25 Nov 2021 15:29:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5E9F51BF27C
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 15:29:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 59F5F40129
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 15:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uBxBVSdOj5Bs for <devel@linuxdriverproject.org>;
 Thu, 25 Nov 2021 15:29:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F2CE1400C6
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 15:29:00 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id v11so12414301wrw.10
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 07:29:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=g/l/Zt6l//0WhpMp7/x9EgUSAEIcfRaNwbku+X50+d8=;
 b=kL6xrum/DEDA73kTZNeF8b01p/SYkUyXbvVTGDZ3CYjpeK0iL0pkTv1CS3CgTAPmDZ
 XNO2ozVnWnwIvOQWbKAhS3ez3/x8A1l+mv9JQ0hp1rk6OTrLgQj4aWR+99ycBb9JwgHn
 CobdWgSn4vyzbR2R1dKgbtf+4zeA3lVl/T6s7hqYGJnA/trS9UfMsx2qwL+4fKls1/mC
 x1g6R2rMLx6RE1QVWUrnGn67ky7uHveFqqX16EpilxgL+gPtymSL+EKRPlvYj1tjULld
 OHZOC9ih+8x8BnNVexChLyCsS+i2Y3LIdckHQqmvj0c3lT1yrWBL/OSLEZ3wriUPQ3qO
 ez0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=g/l/Zt6l//0WhpMp7/x9EgUSAEIcfRaNwbku+X50+d8=;
 b=C8EVy17Zecclog03qceX+i4ZQuuMwiYTJbWbHT0MBPpYkgaUAjLJof3Vf3Ls6BEswq
 ILjwb3GelS/mzT59X+pDICq0jWQHk9WfaMGaxp4drUIy84Yrg6Krqn/DZZtAO22XMB5n
 69KyemAP56479SjrO+koD81GXJybD5u9BWGvvAEswITGrNL0FaA+G1A/pzCsj6jdeYzn
 LPNnyBwCxIa8OsrichS4WKguzGsCstHE0YCODdDfohdkySSECobV7v2FYXiWKnT6z1Jq
 jgD9kEqwjGmVnVyh4uisLazqFDkf5fZ1JsFEzLtWIYdaCt0s9tvJrc+zaFZu4cIG9fV+
 8f7Q==
X-Gm-Message-State: AOAM53085weGRAWnDeq4IpQvADOc3OV7tnoVm6tFu3AFBXzQDmXi+QZZ
 sHmLw3R6CsJZTb/oTT9q6KH2Dg==
X-Google-Smtp-Source: ABdhPJw5zmI4w9br8mbbXPWCWSoZ80q+2Yon2POY2SPv6nO1yLE9sFQLUUL8dbdBG4r9fKGuEz4f2Q==
X-Received: by 2002:adf:ce08:: with SMTP id p8mr7459591wrn.154.1637854139046; 
 Thu, 25 Nov 2021 07:28:59 -0800 (PST)
Received: from google.com ([2.31.167.18])
 by smtp.gmail.com with ESMTPSA id d15sm4577839wri.50.2021.11.25.07.28.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 07:28:58 -0800 (PST)
Date: Thu, 25 Nov 2021 15:28:56 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 1/1] staging: ion: Prevent incorrect reference counting
 behavour
Message-ID: <YZ+ruHBCp9zsXB/q@google.com>
References: <20211125142004.686650-1-lee.jones@linaro.org>
 <20211125145004.GN6514@kadam> <YZ+muS7vC5iNs/kq@google.com>
 <20211125151822.GJ18178@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211125151822.GJ18178@kadam>
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
Cc: devel@driverdev.osuosl.org, riandrews@android.com, stable@vger.kernel.org,
 arve@android.com, labbott@redhat.com, sumit.semwal@linaro.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCAyNSBOb3YgMjAyMSwgRGFuIENhcnBlbnRlciB3cm90ZToKCj4gT24gVGh1LCBOb3Yg
MjUsIDIwMjEgYXQgMDM6MDc6MzdQTSArMDAwMCwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gT24gVGh1
LCAyNSBOb3YgMjAyMSwgRGFuIENhcnBlbnRlciB3cm90ZToKPiA+IAo+ID4gPiBPbiBUaHUsIE5v
diAyNSwgMjAyMSBhdCAwMjoyMDowNFBNICswMDAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiA+ID4g
U3VwcGx5IGFkZGl0aW9uYWwgY2hlY2tzIGluIG9yZGVyIHRvIHByZXZlbnQgdW5leHBlY3RlZCBy
ZXN1bHRzLgo+ID4gPiA+IAo+ID4gPiA+IEZpeGVzOiBiODkyYmY3NWIyMDM0ICgiaW9uOiBTd2l0
Y2ggaW9uIHRvIHVzZSBkbWEtYnVmIikKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMg
PGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+ID4gPiA+IC0tLQo+ID4gPiA+IFNob3VsZCBiZSBiYWNr
LXBvcnRlZCBmcm9tIHY0LjkgYW5kIGVhcmxpZXIuCj4gPiA+ID4gCj4gPiA+ID4gIGRyaXZlcnMv
c3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYyB8IDUgKysrKysKPiA+ID4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDUgaW5zZXJ0aW9ucygrKQo+ID4gPiA+IAo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmMgYi9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24v
aW9uLmMKPiA+ID4gPiBpbmRleCA4MDZlOWIzMGI5ZGM4Li40MDJiNzRmNWQ3ZTY5IDEwMDY0NAo+
ID4gPiA+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYwo+ID4gPiA+ICsr
KyBiL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYwo+ID4gPiA+IEBAIC0yOSw2ICsy
OSw3IEBACj4gPiA+ID4gICNpbmNsdWRlIDxsaW51eC9leHBvcnQuaD4KPiA+ID4gPiAgI2luY2x1
ZGUgPGxpbnV4L21tLmg+Cj4gPiA+ID4gICNpbmNsdWRlIDxsaW51eC9tbV90eXBlcy5oPgo+ID4g
PiA+ICsjaW5jbHVkZSA8bGludXgvb3ZlcmZsb3cuaD4KPiA+ID4gPiAgI2luY2x1ZGUgPGxpbnV4
L3JidHJlZS5oPgo+ID4gPiA+ICAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+ID4gPiA+ICAjaW5j
bHVkZSA8bGludXgvc2VxX2ZpbGUuaD4KPiA+ID4gPiBAQCAtNTA5LDYgKzUxMCwxMCBAQCBzdGF0
aWMgdm9pZCAqaW9uX2hhbmRsZV9rbWFwX2dldChzdHJ1Y3QgaW9uX2hhbmRsZSAqaGFuZGxlKQo+
ID4gPiA+ICAJdm9pZCAqdmFkZHI7Cj4gPiA+ID4gIAo+ID4gPiA+ICAJaWYgKGhhbmRsZS0+a21h
cF9jbnQpIHsKPiA+ID4gPiArCQlpZiAoY2hlY2tfYWRkX292ZXJmbG93KGhhbmRsZS0+a21hcF9j
bnQsCj4gPiA+ID4gKwkJCQkgICAgICAgKHVuc2lnbmVkIGludCkgMSwgJmhhbmRsZS0+a21hcF9j
bnQpKQo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBeXl5eXl5eXl5eXl5eXl5eXgo+ID4gPiAKPiA+ID4gPiArCQkJcmV0dXJuIEVS
Ul9QVFIoLUVPVkVSRkxPVyk7Cj4gPiA+ID4gKwo+ID4gPiA+ICAJCWhhbmRsZS0+a21hcF9jbnQr
KzsKPiA+ID4gICAgICAgICAgICAgICAgIF5eXl5eXl5eXl5eXl5eXl5eXl4KPiA+ID4gVGhpcyB3
aWxsIG5vdCBkbyB3aGF0IHlvdSB3YW50IGF0IGFsbC4gIEl0J3MgYSBkb3VibGUgaW5jcmVtZW50
IG9uIHRoZQo+ID4gPiBzdWNjZXNzIHBhdGggYW5kIGl0IGxlYXZlIGhhbmRsZS0+a21hcF9jbnQg
b3ZlcmZsb3dlZCBvbiBmYWlsdXJlIHBhdGguCj4gPiAKPiA+IEkgcmVhZCB0aGUgaGVscGVyIHRv
IHRha2UgY29waWVzIG9mIHRoZSBvcmlnaW5hbCB2YXJpYWJsZXMuCj4gPiAKPiA+ICNkZWZpbmUg
X191bnNpZ25lZF9hZGRfb3ZlcmZsb3coYSwgYiwgZCkgKHsgICAgIFwKPiA+ICAgICAgICAgdHlw
ZW9mKGEpIF9fYSA9IChhKTsgICAgICAgICAgICAgICAgICAgIFwKPiA+ICAgICAgICAgdHlwZW9m
KGIpIF9fYiA9IChiKTsgICAgICAgICAgICAgICAgICAgIFwKPiA+ICAgICAgICAgdHlwZW9mKGQp
IF9fZCA9IChkKTsgICAgICAgICAgICAgICAgICAgIFwKPiA+ICAgICAgICAgKHZvaWQpICgmX19h
ID09ICZfX2IpOyAgICAgICAgICAgICAgICAgIFwKPiA+ICAgICAgICAgKHZvaWQpICgmX19hID09
IF9fZCk7ICAgICAgICAgICAgICAgICAgIFwKPiA+ICAgICAgICAgKl9fZCA9IF9fYSArIF9fYjsg
ICAgICAgICAgICAgICAgICAgICAgIFwKPiAgICAgICAgICAgXl5eXl5eXl5eXl5eXl5eXgo+IFRo
aXMgYXNzaWdubWVudCBzZXRzIGhhbmRsZS0+a21hcF9jbnQgdG8gdGhlIG92ZXJmbG93ZWQgdmFs
dWUuCj4gCj4gPiAgICAgICAgICpfX2QgPCBfX2E7ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBcCj4gPiB9KQo+ID4gCj4gPiBNYXliZSBJIG1pc3JlYWQgaXQuCj4gPiAKPiA+IFNvIHRoZSBv
cmlnaW5hbCBwYXRjaCBbMF0gd2FzIGJldHRlcj8KPiA+IAo+ID4gWzBdIGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL3N0YWJsZS8yMDIxMTEyNTEyMDIzNC42Nzk4Ny0xLWxlZS5qb25lc0BsaW5hcm8u
b3JnLyAKPiAKPiBUaGUgb3JpZ2luYWwgYXQgbGVhc3Qgd29ya2VkLiAgOlAKPiAKPiBZb3UncmUg
Y2F0Y2hpbmcgbWUgcmlnaHQgYXMgSSdtIGtub2NraW5nIG9mZiBmb3IgdGhlIGRheSBzbyBJJ20g
bm90Cj4gc3VyZSBob3cgdG8gd3JpdGUgdGhpcyBjb2RlLiAgSSBoYWQgdGhvdWdodCB0aGF0IC0+
a21hcF9jbnQgd2FzIGEKPiByZWd1bGFyIGludCBhbmQgbm90IGFuIHVuc2lnbmVkIGludCwgYnV0
IEkgd291bGQgaGF2ZSB0byBwdWxsIGEgc3RhYmxlCj4gdHJlZSB0byBzZWUgd2hlcmUgSSBtaXNy
ZWFkIHRoZSBjb2RlLgo+IAo+IEknbGwgbG9vayBhdCB0aGlzIHRvbW9ycm93IE5haXJvYmkgdGlt
ZSwgYnV0IEkgZXhwZWN0IGJ5IHRoZW4geW91J2xsCj4gYWxyZWFkeSBoYXZlIGl0IGFsbCBmaWd1
cmVkIG91dC4KClRoZXJlJ3Mgbm8gcnVzaC4gIFRoaXMgaGFzIGJlZW4gYnJva2VuIGZvciBhIGxv
bmcgdGltZS4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KU2VuaW9yIFRlY2huaWNhbCBMZWFk
IC0gRGV2ZWxvcGVyIFNlcnZpY2VzCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJl
IGZvciBBcm0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxp
bmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
