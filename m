Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6C8278D52
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 17:57:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 075CD8762B;
	Fri, 25 Sep 2020 15:57:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tsHjfPEya6ZX; Fri, 25 Sep 2020 15:57:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0BB738761E;
	Fri, 25 Sep 2020 15:57:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2FC5A1BF28A
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 15:57:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2BF9D86D2B
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 15:57:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cxv6xqIC20nR for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 15:57:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4969486D2C
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 15:57:30 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id z13so3257271iom.8
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 08:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+T1vJpfGM0DJ7LWYNS1cQt+Wu4UnQDKYhsfLhTZbH8U=;
 b=MAA7kqfxNIq1GJqYRvGDYa7Yc6+mwjNJqsgEKROsjA3rHliSG+UT9inF1Zxtrsuri5
 KnZEI3PuiZL4Z82UCIo4bbbKnxfwH9/5Ulpb/DGYMjMhQeC0K93dqo1cdCVXkrcKZLUj
 yGQ9hSoEjIJyXp9TqOHeILyP2Q4k91xmg+IzGdedCy/BfZIV1S3GSZvvXFOS8ga6BTX8
 iTANGRsIvlEWy1/lBA2Dvhsaq1ZOzUYvw/iK+UFU0KAONQQcJpDhSEUtnlu7HKT0LDOD
 ocuviY06Fu4ppi/Zx6WUMTbNUiy8sGH0ULTEuEw/KR2XUbC8ABg5BcR/iJ7ynLv5Wlol
 svmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+T1vJpfGM0DJ7LWYNS1cQt+Wu4UnQDKYhsfLhTZbH8U=;
 b=I2f44zbJ1X5H8W8+jimz3cw8zJ0rhKEx8aAGRBBpLNSGZYsz6nU6VxWbFyWrFG1bW4
 z2nLuI22lvTM6VGYtPHrufczrH69SsvwDG1zGsqmprHAtI2v8kvxitJL/hbsu7cLgNqb
 JBjGkjprONwrWoqRxuFAcdLtDFS9rEVFqE152ke7CTcIr62qPGJZfgM4er32NiI6hM6C
 udCFNDnYm5j+DbM4qd5xDdGlUzhjdv862LDhVH2/QUKwcg5v/wtoh19Pc/A108RpGPIa
 QOXdWRIetEIHdMUL8oJ7Rn0E4Auv7Isyx+Kvex3scrl3a8EUt3QhQq5SmFUWGeJXqpW4
 wz6g==
X-Gm-Message-State: AOAM530H9XLV28yVYJV17cRXhVJ6A8vM5Z4n0ltYTLIePATv1ZVRALUx
 QbdWyJyDyGDY8E34XdDtJWS9wQ==
X-Google-Smtp-Source: ABdhPJyhFEqzKYVEnagNrOoxsliKLjUGakRFPavAnpXl/f7JyHElUsNT3IpEORIIUTPhLwFTJfyDoA==
X-Received: by 2002:a05:6602:6c9:: with SMTP id n9mr706181iox.91.1601049449252; 
 Fri, 25 Sep 2020 08:57:29 -0700 (PDT)
Received: from [172.22.22.4] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id e9sm1648359ilr.20.2020.09.25.08.57.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Sep 2020 08:57:28 -0700 (PDT)
Subject: Re: [PATCH 3/3] [PATCH] staging: greybus: __u8 is sufficient for
 snd_ctl_elem_type_t and snd_ctl_elem_iface_t
To: Coiby Xu <coiby.xu@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20200924102039.43895-1-coiby.xu@gmail.com>
 <20200924102039.43895-3-coiby.xu@gmail.com>
 <20200924110057.GA319713@kroah.com> <20200925140732.lqkxa3rb3beg5lm3@Rk>
From: Alex Elder <elder@linaro.org>
Message-ID: <8e613bb6-6093-cb81-3fa1-e6583837c843@linaro.org>
Date: Fri, 25 Sep 2020 10:57:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200925140732.lqkxa3rb3beg5lm3@Rk>
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
Cc: devel@driverdev.osuosl.org,
 "moderated list:SOUND" <alsa-devel@alsa-project.org>,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Mark Greer <mgreer@animalcreek.com>,
 "moderated list:GREYBUS SUBSYSTEM" <greybus-dev@lists.linaro.org>,
 Johan Hovold <johan@kernel.org>, Jaroslav Kysela <perex@perex.cz>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gOS8yNS8yMCA5OjA3IEFNLCBDb2lieSBYdSB3cm90ZToKPiBPbiBUaHUsIFNlcCAyNCwgMjAy
MCBhdCAwMTowMDo1N1BNICswMjAwLCBHcmVnIEtyb2FoLUhhcnRtYW4gd3JvdGU6Cj4+IE9uIFRo
dSwgU2VwIDI0LCAyMDIwIGF0IDA2OjIwOjM5UE0gKzA4MDAsIENvaWJ5IFh1IHdyb3RlOgo+Pj4g
VXNlIF9fOCB0byByZXBsYWNlIGludCBhbmQgcmVtb3ZlIHRoZSB1bm5lY2Vzc2FyeSBfX2JpdHdp
c2UgdHlwZSAKPj4+IGF0dHJpYnV0ZS4KPj4+Cj4+PiBGb3VuZCBieSBzcGFyc2UsCgouIC4gLgoK
Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvc291bmQvYXNvdW5kLmggYi9pbmNsdWRlL3Vh
cGkvc291bmQvYXNvdW5kLmgKPj4+IGluZGV4IDUzNWE3MjI5ZTFkOS4uOGU3MWE5NTY0NGFiIDEw
MDY0NAo+Pj4gLS0tIGEvaW5jbHVkZS91YXBpL3NvdW5kL2Fzb3VuZC5oCj4+PiArKysgYi9pbmNs
dWRlL3VhcGkvc291bmQvYXNvdW5kLmgKPj4+IEBAIC05NTAsNyArOTUwLDcgQEAgc3RydWN0IHNu
ZF9jdGxfY2FyZF9pbmZvIHsKPj4+IMKgwqDCoMKgIHVuc2lnbmVkIGNoYXIgY29tcG9uZW50c1sx
MjhdO8KgwqDCoCAvKiBjYXJkIGNvbXBvbmVudHMgLyBmaW5lIAo+Pj4gaWRlbnRpZmljYXRpb24s
IGRlbGltaXRlZCB3aXRoIG9uZSBzcGFjZSAoQUM5NyBldGMuLikgKi8KPj4+IMKgfTsKPj4+Cj4+
PiAtdHlwZWRlZiBpbnQgX19iaXR3aXNlIHNuZF9jdGxfZWxlbV90eXBlX3Q7Cj4+PiArdHlwZWRl
ZiBfX3U4IHNuZF9jdGxfZWxlbV90eXBlX3Q7Cj4+PiDCoCNkZWZpbmXCoMKgwqAgU05EUlZfQ1RM
X0VMRU1fVFlQRV9OT05FwqDCoMKgICgoX19mb3JjZSAKPj4+IHNuZF9jdGxfZWxlbV90eXBlX3Qp
IDApIC8qIGludmFsaWQgKi8KPj4+IMKgI2RlZmluZcKgwqDCoCBTTkRSVl9DVExfRUxFTV9UWVBF
X0JPT0xFQU7CoMKgwqAgKChfX2ZvcmNlIAo+Pj4gc25kX2N0bF9lbGVtX3R5cGVfdCkgMSkgLyog
Ym9vbGVhbiB0eXBlICovCj4+PiDCoCNkZWZpbmXCoMKgwqAgU05EUlZfQ1RMX0VMRU1fVFlQRV9J
TlRFR0VSwqDCoMKgICgoX19mb3JjZSAKPj4+IHNuZF9jdGxfZWxlbV90eXBlX3QpIDIpIC8qIGlu
dGVnZXIgdHlwZSAqLwo+Pj4gQEAgLTk2MCw3ICs5NjAsNyBAQCB0eXBlZGVmIGludCBfX2JpdHdp
c2Ugc25kX2N0bF9lbGVtX3R5cGVfdDsKPj4+IMKgI2RlZmluZcKgwqDCoCBTTkRSVl9DVExfRUxF
TV9UWVBFX0lOVEVHRVI2NMKgwqDCoCAoKF9fZm9yY2UgCj4+PiBzbmRfY3RsX2VsZW1fdHlwZV90
KSA2KSAvKiA2NC1iaXQgaW50ZWdlciB0eXBlICovCj4+PiDCoCNkZWZpbmXCoMKgwqAgU05EUlZf
Q1RMX0VMRU1fVFlQRV9MQVNUwqDCoMKgIFNORFJWX0NUTF9FTEVNX1RZUEVfSU5URUdFUjY0Cj4+
Pgo+Pj4gLXR5cGVkZWYgaW50IF9fYml0d2lzZSBzbmRfY3RsX2VsZW1faWZhY2VfdDsKPj4+ICt0
eXBlZGVmIF9fdTggc25kX2N0bF9lbGVtX2lmYWNlX3Q7Cj4+PiDCoCNkZWZpbmXCoMKgwqAgU05E
UlZfQ1RMX0VMRU1fSUZBQ0VfQ0FSRMKgwqDCoCAoKF9fZm9yY2UgCj4+PiBzbmRfY3RsX2VsZW1f
aWZhY2VfdCkgMCkgLyogZ2xvYmFsIGNvbnRyb2wgKi8KPj4+IMKgI2RlZmluZcKgwqDCoCBTTkRS
Vl9DVExfRUxFTV9JRkFDRV9IV0RFUMKgwqDCoCAoKF9fZm9yY2UgCj4+PiBzbmRfY3RsX2VsZW1f
aWZhY2VfdCkgMSkgLyogaGFyZHdhcmUgZGVwZW5kZW50IGRldmljZSAqLwo+Pj4gwqAjZGVmaW5l
wqDCoMKgIFNORFJWX0NUTF9FTEVNX0lGQUNFX01JWEVSwqDCoMKgICgoX19mb3JjZSAKPj4+IHNu
ZF9jdGxfZWxlbV9pZmFjZV90KSAyKSAvKiB2aXJ0dWFsIG1peGVyIGRldmljZSAqLwo+Pgo+PiBJ
IGNhbid0IHRha2UgYSB1YXBpIHNvdW5kIGhlYWRlciBmaWxlIHBhdGNoIGFsb25nIHdpdGggYSBk
cml2ZXIgY2hhbmdlLAo+PiB0aGVzZSBuZWVkIHRvIGJlIGluZGVwZW5kYW50Lgo+IAo+IFRoYW5r
IHlvdSBhbmQgQWxleCBmb3IgcmVtaW5kaW5nIG1lIHRoaXMgaXMgYSBjaGFuZ2Ugb2YgcHVibGlj
IGhlYWRlciEKPj4KPj4gQW5kIHRoaXMgaXMgYSB1c2Vyc3BhY2UgYXBpLCB5b3UganVzdCBjaGFu
Z2VkIHRoZSBzaXplIG9mIGFuIGV4dGVybmFsbHkKPj4gZmFjaW5nIHZhcmlhYmxlLCBhcmUgeW91
IF9TVVJFXyB0aGF0IGlzIG9rIHRvIGRvPwo+IAo+IFRoZSByZWFzb25zIEkgbWFrZSB0aGlzIGNo
YW5nZSBhcmUsIDEpIHVzaW5nIGludCB0byByZXByZXNlbnQgNyBlbnVtZXJhdGlvbgo+IHZhbHVl
cyBzZWVtcyB0byBiZSBvdmVya2lsbDsgMikgdXNpbmcgb25lIHR5cGUgY291bGQgYXZvaWQgd29y
cmllcwo+IGFib3V0IGJ5dGUgb3JkZXIuCgooMSkgbWlnaHQgYmUgYSB2YWxpZCBzdWdnZXN0aW9u
LCBidXQgdGhlIGZpbGUgeW91IHN1Z2dlc3QKY2hhbmdpbmcgaXMgcGFydCBvZiB0aGUgTGludXgg
dXNlciBzcGFjZSBBUEksIHdoaWNoIHlvdQpiYXNpY2FsbHkgY2FuJ3QgY2hhbmdlLgoKSSdtIGZh
aXJseSBjZXJ0YWluIHRoZSB1c2VyIHNwYWNlIEFQSSBpcyBkZWZpbmVkIHRvIGhhdmUKQ1BVLWxv
Y2FsIGJ5dGUgb3JkZXIgKHVubGVzcyBzcGVjaWZpZWQgZXhwbGljaXRseSBvdGhlcndpc2UpCnNv
IHRoYXQgaXMgbm90IGEgY29uY2Vybi4KCj4gSSBleGFtaW5lIG9uZSB1c2Vyc3BhY2UgZXhhbXBs
ZSAobGliYWxzYS1pbnRmL2Fsc2FfbWl4ZXIuYyBbMV0pLiBUaGlzCj4gY2hhbmdlIHdvbid0IGNh
dXNlIGNvbXBpbGluZyBicmVha2FnZS4gQnV0IEkgZG9uJ3QgdGhlIGV4cGVyaWVuY2UgdG8KPiBp
bWFnaW5lIGFueSBvdGhlciBiYWQgY29uc2VxdWVuY2UuCgpBcyBhIHJ1bGUsIG9uY2UgdGhlIHVz
ZXIgc3BhY2UgQVBJIGhhcyBiZWVuIGVzdGFibGlzaGVkLCBpdApzdGF5cyB3aXRoIHVzIGZvcmV2
ZXIuICBZb3UgY2FuIGFkZCB0byBpdCwgYnV0IG1vZGlmeWluZwoob3IgcmVtb3ZpbmcpIGFuIGV4
aXN0aW5nIGludGVyZmFjZSBpcyBlc3NlbnRpYWxseSBmb3JiaWRkZW4uCgo+IEFub3RoZXIgd2F5
IHRvIGF2b2lkIHVzZXJzcGFjZSBBUEkgY2hhbmdlIGlzIHRvIGxldAo+ICJzdHJ1Y3QgZ2JfYXVk
aW9fY3RsX2VsZW1faW5mbyIgdXNlIHNuZF9jdGxfZWxlbV9pZmFjZV90IHR5cGUgd2hpY2ggbWF5
Cj4gYmUgbW9yZSBlbGVnYW50IHRoYW4gdXNpbmcgIl9fZm9yY2UiIGFzIHN1Z2dlc3RlZCBieSBB
bGV4LAoKVGhlIEdyZXlidXMgZGVmaW5pdGlvbnMgd2VyZSBleHBsaWNpdGx5IGRlZmluZWQgdG8g
YmUKb3BlcmF0aW5nIHN5c3RlbSBpbmRlcGVuZGVudC4gIEZvciB0aGF0IHJlYXNvbiB0aGVyZSBh
cmUKKGFkbWl0dGVkbHkgY3VtYmVyc29tZSkgZGVmaW5pdGlvbnMgb2YgY2VydGFpbiB0eXBlcyBh
bmQKdmFsdWVzIHRoYXQgZXNzZW50aWFsbHkgbWltaWMgdGhvc2UgZGVmaW5lZCBieSBMaW51eApl
eGFjdGx5ICBUaGF0IHdheSBMaW51eCAob3IgYW5vdGhlciBzeXN0ZW0gdXNpbmcgR3JleWJ1cykK
Y2FuIGNoYW5nZSBpdHMgaW50ZXJuYWwgdmFsdWVzIHdpdGhvdXQgY2hhbmdpbmcgdGhlCkdyZXli
dXMgQVBJIGRlZmluaXRpb24uICAoVGhpcyBhZGRyZXNzZXMgdGhlIGNvbmNlcm4geW91Cm1lbnRp
b24gYmVsb3cuKQoKV2hhdCB5b3UgYXJlIHN1Z2dlc3RpbmcgaXMgbm90IGNvbnNpc3RlbnQgd2l0
aCB0aGF0CnByaW5jaXBsZS4KCgkJCQkJLUFsZXgKCgo+ICQgZ2l0IGRpZmYKPiBkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9saW51eC9ncmV5YnVzL2dyZXlidXNfcHJvdG9jb2xzLmggCj4gYi9pbmNsdWRl
L2xpbnV4L2dyZXlidXMvZ3JleWJ1c19wcm90b2NvbHMuaAo+IGluZGV4IGFlYjhmOTI0MzU0NS4u
N2Y2NzUzZWM3ZWY3IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgvZ3JleWJ1cy9ncmV5YnVz
X3Byb3RvY29scy5oCj4gKysrIGIvaW5jbHVkZS9saW51eC9ncmV5YnVzL2dyZXlidXNfcHJvdG9j
b2xzLmgKPiBAQCAtOCw2ICs4LDcgQEAKPiAgwqAjZGVmaW5lIF9fR1JFWUJVU19QUk9UT0NPTFNf
SAo+IAo+ICDCoCNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgo+ICsjaW5jbHVkZSA8c291bmQvYXNv
dW5kLmg+Cj4gCj4gIMKgLyogRml4ZWQgSURzIGZvciBjb250cm9sL3N2YyBwcm90b2NvbHMgKi8K
PiAKPiBAQCAtMTk5Nyw3ICsxOTk4LDcgQEAgc3RydWN0IGdiX2F1ZGlvX2VudW1lcmF0ZWQgewo+
ICDCoH0gX19wYWNrZWQ7Cj4gCj4gIMKgc3RydWN0IGdiX2F1ZGlvX2N0bF9lbGVtX2luZm8geyAv
KiBTZWUgc25kX2N0bF9lbGVtX2luZm8gaW4gTGludXggCj4gc291cmNlICovCj4gLcKgwqDCoMKg
wqDCoCBfX3U4wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0eXBlO8KgwqDCoMKgwqDCoMKgwqDCoMKg
IC8qIEdCX0FVRElPX0NUTF9FTEVNX1RZUEVfKiAqLwo+ICvCoMKgwqDCoMKgwqAgc25kX2N0bF9l
bGVtX3R5cGVfdMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0eXBlO8KgwqDCoMKgwqDCoMKgwqDC
oMKgIC8qIAo+IEdCX0FVRElPX0NUTF9FTEVNX1RZUEVfKiAqLwo+ICDCoMKgwqDCoMKgwqDCoCBf
X2xlMTbCoMKgwqDCoMKgwqDCoMKgwqAgZGltZW5bNF07Cj4gIMKgwqDCoMKgwqDCoMKgIHVuaW9u
IHsKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBnYl9hdWRpb19pbnRl
Z2VywqDCoMKgwqDCoMKgwqDCoCBpbnRlZ2VyCj4gCj4gTXkgb25seSBjb25jZXJuIGlzIGlmIGdy
ZXlidXMgYXV0aG9ycyBoYXZlIGFueSBzcGVjaWFsIHJlYXNvbiB0byBub3QgCj4gaW5jbHVkZQo+
IHNvdW5kL2Fzb3VuZC5oIGluIHRoZSBmaXJzdCBwbGFjZSBhbmQgcmUtZGVmaW5lIHRoaW5ncyBs
aWtlIAo+IFNORFJWX0NUTF9FTEVNX1RZUEVfKiwKPiAKPiAvKiBTZWUgU05EUlZfQ1RMX0VMRU1f
VFlQRV8qIGluIExpbnV4IHNvdXJjZSAqLwo+ICNkZWZpbmUgR0JfQVVESU9fQ1RMX0VMRU1fVFlQ
RV9CT09MRUFOwqDCoMKgwqDCoMKgwqAgMHgwMQo+ICNkZWZpbmUgR0JfQVVESU9fQ1RMX0VMRU1f
VFlQRV9JTlRFR0VSwqDCoMKgwqDCoMKgwqAgMHgwMgo+IAo+IC8qIFNlZSBTTkRSVl9DVExfRUxF
TV9JRkFDRV8qIGluIExpbnV4IHNvdXJjZSAqLwo+ICNkZWZpbmUgR0JfQVVESU9fQ1RMX0VMRU1f
SUZBQ0VfQ0FSRMKgwqDCoMKgwqDCoMKgIDB4MDAKPiAuLi4KPiAKPiAvKiBTTkRSVl9DVExfRUxF
TV9BQ0NFU1NfKiBpbiBMaW51eCBzb3VyY2UgKi8KPiAjZGVmaW5lIEdCX0FVRElPX0FDQ0VTU19S
RUFEwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBCSVQoMCkKPiAuLi4KPiAKPiBbMV0gCj4gaHR0cHM6
Ly9naXRsYWIuY29tL0NvZGVhdXJvcmEvcGxhdGZvcm1faGFyZHdhcmVfcWNvbV9hdWRpby8tL2Js
b2IvYWVlNjAzMjgyNmVjN2M4YjZlZGRhNDA0NDIyZmRhMGVmNDBlYzJkYi9saWJhbHNhLWludGYv
YWxzYV9taXhlci5jIAo+IAo+ICDCoGFsc2FfbWl4ZXIuYwo+Pgo+PiB0aGFua3MsCj4+Cj4+IGdy
ZWcgay1oCj4gCj4gLS0gCj4gQmVzdCByZWdhcmRzLAo+IENvaWJ5CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
