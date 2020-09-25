Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7B9278D81
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 18:02:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE17586E6E;
	Fri, 25 Sep 2020 16:02:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tJAWlfR+A0Gx; Fri, 25 Sep 2020 16:02:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 41DA386E5E;
	Fri, 25 Sep 2020 16:02:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 279D91BF9BD
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 16:02:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1DB6C86D19
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 16:02:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pbDCy14i9JYE for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 16:02:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E956B86D10
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 16:02:25 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id z25so3256117iol.10
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 09:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KKM36HMFNo7IvqfCBLe5UvX13jWEuh671Vjt/sAVWGU=;
 b=sVLJdXvNc4vI/tTRzJH1n5umDfoQzc0lsxFSySSDfM9g8sfMF5bGtV3YOz+Mq/yTg4
 mYfcO/hDl7+K7I1RppX5dH3wOKDaTFqUPdQKU1USHqHhuZvVZbj3nhzZazC7ljqr4AlM
 GdlaWb5cSbBxU6iq0y28UrZceThjvQPmG7di6bcrCYiIIAFjPeOHRGTrcggy82+Br2qc
 pO9SSfO2nxkYF86cfQ3NVBcx6W+y8z2+LeCKIg2IjlcHcpesTx4STeu9RltEEOvgaG4h
 oNdbnMlPqiqt4flmlon3yktUtP8FabrmBXTYKLGv3bQWD+UpGzCfP4/D6QMEp89fwKBC
 i4aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KKM36HMFNo7IvqfCBLe5UvX13jWEuh671Vjt/sAVWGU=;
 b=FTl8QHEt2HNB65V1cOnEhAWFicBDnaB113NtA53gt4087dYqndpDTP0TYrcsZvBBtv
 NOUjaYPiq1fSagO35npKGFMdi/vqv/P5d31sBsEqoh3/PYd1Z2VfDv+jyUV5lQndv0DV
 Wg5QcQN6FeookgXFDFSIWghKSyX0v/7BbotuwD/TdfzAdpuLE3WhlKTNu4oc6AVN15QD
 v/RsCHJC6M7SygoFnC5M1GxIgPBTEqtBH93m0y/crpDyj99LJnv0vCZh5DwKZya5Tkcs
 bu+Fm9xpjxDlMcCiyd7j0YwpSS7zvxBvfd1U9OL18tuxZFcTxEWmX/Lbqu92+wWWn6ev
 jTpQ==
X-Gm-Message-State: AOAM530EH2DfrXwSjPI8NLRDsohXn3PSgItUJk3CWOwmwTAjhy35e3iz
 1VNGlKdVG9DilYn7I3XzUhOepA==
X-Google-Smtp-Source: ABdhPJw116LnPqm4dNs1MVsCzNLg8V45rQtN1gWgLkN5mnf5844SsTjgU2eBKcngEh17i/akpuiSGA==
X-Received: by 2002:a02:1004:: with SMTP id 4mr411804jay.127.1601049745262;
 Fri, 25 Sep 2020 09:02:25 -0700 (PDT)
Received: from [172.22.22.4] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id c12sm1720817ili.48.2020.09.25.09.02.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Sep 2020 09:02:24 -0700 (PDT)
Subject: Re: [greybus-dev] [PATCH 3/3] [PATCH] staging: greybus: __u8 is
 sufficient for snd_ctl_elem_type_t and snd_ctl_elem_iface_t
To: Coiby Xu <coiby.xu@gmail.com>, David Laight <David.Laight@aculab.com>
References: <20200924102039.43895-1-coiby.xu@gmail.com>
 <20200924102039.43895-3-coiby.xu@gmail.com>
 <0175c477851243baa8a92177667d6312@AcuMS.aculab.com>
 <20200925141125.vfm5sjnsfvxo2ras@Rk>
From: Alex Elder <elder@linaro.org>
Message-ID: <160c222d-79e4-c5f0-344f-1a69821db039@linaro.org>
Date: Fri, 25 Sep 2020 11:02:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200925141125.vfm5sjnsfvxo2ras@Rk>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "moderated list:SOUND" <alsa-devel@alsa-project.org>,
 Alex Elder <elder@kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Takashi Iwai <tiwai@suse.com>, Johan Hovold <johan@kernel.org>,
 "moderated list:GREYBUS SUBSYSTEM" <greybus-dev@lists.linaro.org>,
 Jaroslav Kysela <perex@perex.cz>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gOS8yNS8yMCA5OjExIEFNLCBDb2lieSBYdSB3cm90ZToKPiBPbiBUaHUsIFNlcCAyNCwgMjAy
MCBhdCAxMDo1NDo1MEFNICswMDAwLCBEYXZpZCBMYWlnaHQgd3JvdGU6Cj4+IEZyb206IENvaWJ5
IFh1Cj4+PiBTZW50OiAyNCBTZXB0ZW1iZXIgMjAyMCAxMToyMQo+Pj4gVXNlIF9fOCB0byByZXBs
YWNlIGludCBhbmQgcmVtb3ZlIHRoZSB1bm5lY2Vzc2FyeSBfX2JpdHdpc2UgdHlwZSAKPj4+IGF0
dHJpYnV0ZS4KPj4+Cj4+PiBGb3VuZCBieSBzcGFyc2UsCj4+IC4uLgo+Pj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvdWFwaS9zb3VuZC9hc291bmQuaCBiL2luY2x1ZGUvdWFwaS9zb3VuZC9hc291bmQu
aAo+Pj4gaW5kZXggNTM1YTcyMjllMWQ5Li44ZTcxYTk1NjQ0YWIgMTAwNjQ0Cj4+PiAtLS0gYS9p
bmNsdWRlL3VhcGkvc291bmQvYXNvdW5kLmgKPj4+ICsrKyBiL2luY2x1ZGUvdWFwaS9zb3VuZC9h
c291bmQuaAo+Pj4gQEAgLTk1MCw3ICs5NTAsNyBAQCBzdHJ1Y3Qgc25kX2N0bF9jYXJkX2luZm8g
ewo+Pj4gwqDCoMKgwqAgdW5zaWduZWQgY2hhciBjb21wb25lbnRzWzEyOF07wqDCoMKgIC8qIGNh
cmQgY29tcG9uZW50cyAvIGZpbmUgCj4+PiBpZGVudGlmaWNhdGlvbiwgZGVsaW1pdGVkIHdpdGgg
b25lCj4+PiBzcGFjZSAoQUM5NyBldGMuLikgKi8KPj4+IMKgfTsKPj4+Cj4+PiAtdHlwZWRlZiBp
bnQgX19iaXR3aXNlIHNuZF9jdGxfZWxlbV90eXBlX3Q7Cj4+PiArdHlwZWRlZiBfX3U4IHNuZF9j
dGxfZWxlbV90eXBlX3Q7Cj4+PiDCoCNkZWZpbmXCoMKgwqAgU05EUlZfQ1RMX0VMRU1fVFlQRV9O
T05FwqDCoMKgICgoX19mb3JjZSAKPj4+IHNuZF9jdGxfZWxlbV90eXBlX3QpIDApIC8qIGludmFs
aWQgKi8KPj4+IMKgI2RlZmluZcKgwqDCoCBTTkRSVl9DVExfRUxFTV9UWVBFX0JPT0xFQU7CoMKg
wqAgKChfX2ZvcmNlIAo+Pj4gc25kX2N0bF9lbGVtX3R5cGVfdCkgMSkgLyogYm9vbGVhbiB0eXBl
ICovCj4+PiDCoCNkZWZpbmXCoMKgwqAgU05EUlZfQ1RMX0VMRU1fVFlQRV9JTlRFR0VSwqDCoMKg
ICgoX19mb3JjZSAKPj4+IHNuZF9jdGxfZWxlbV90eXBlX3QpIDIpIC8qIGludGVnZXIgdHlwZSAq
Lwo+Pgo+PiBXVEYgaXMgYWxsIHRoYXQgYWJvdXQgYW55d2F5Pz8KPj4gV2hhdCBpcyB3cm9uZyB3
aXRoOgo+PiAjZGVmaW5lwqDCoMKgIFNORFJWX0NUTF9FTEVNX1RZUEVfTk9ORcKgwqDCoCAwdSAv
KiBpbnZhbGlkICovCj4gCj4gSSdtIHNvcnJ5IEkgZG9uJ3QgcXVpdGUgdW5kZXJzdGFuZCB5b3Uu
IEFyZSB5b3Ugc3VnZ2VzdGluZyAKPiBTTkRSVl9DVExfRUxFTV9UWVBFX05PTkUKPiBpc24ndCBu
ZWVkZWQgaW4gdGhlIGZpcnN0IHBsYWNlPwoKSSB0aGluayBEYXZpZCBpcyBhc2tpbmcgd2h5IGl0
J3MgZGVmaW5lZCB0aGUgd2F5IGl0IGlzLAphbmQgSSdkIGd1ZXNzIGl0J3MgdG8gaGF2ZSB0aGUg
Y29tcGlsZXIgaXNzdWUgYW4gZXJyb3IKaWYgeW91IGF0dGVtcHQgdG8gYXNzaWduIG9uZSBvZiB0
aGVzZSB2YWx1ZXMgdG8gYSB2YXJpYWJsZQpvciBmaWVsZCBvZiB0aGUgd3JvbmcgdHlwZS4KCk5v
LCB5b3Ugc2hvdWxkIG5vdCBhdHRlbXB0IHRvIGNoYW5nZSB0aGlzLgoKCQkJCQktQWxleAo+PiDC
oMKgwqDCoERhdmlkCj4+Cj4+IC0KPj4gUmVnaXN0ZXJlZCBBZGRyZXNzIExha2VzaWRlLCBCcmFt
bGV5IFJvYWQsIE1vdW50IEZhcm0sIE1pbHRvbiBLZXluZXMsIAo+PiBNSzEgMVBULCBVSwo+PiBS
ZWdpc3RyYXRpb24gTm86IDEzOTczODYgKFdhbGVzKQo+Pgo+IAo+IC0tIAo+IEJlc3QgcmVnYXJk
cywKPiBDb2lieQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gZ3JleWJ1cy1kZXYgbWFpbGluZyBsaXN0Cj4gZ3JleWJ1cy1kZXZAbGlzdHMubGluYXJv
Lm9yZwo+IGh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2dyZXlidXMt
ZGV2CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
