Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E97FCA31AD
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 09:56:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 68B63873E6;
	Fri, 30 Aug 2019 07:56:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MMsxqcmSP0sX; Fri, 30 Aug 2019 07:56:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8EC908738C;
	Fri, 30 Aug 2019 07:56:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 727411BF34A
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 07:56:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6EFBF86E92
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 07:56:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0wMu0tcN1gZ1 for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 07:56:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EDFA88717E
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 07:56:50 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id p13so6413421wmh.1
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 00:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=Pzjr7IHiDTSGbuYdOJZ1L0KgTpVtEtYyO9Tpe0cPJug=;
 b=NtVlF12toJ1KoXMdiq99sxClGtZEzzFmf0XNJHYt0HTv3nvOdbK88TVUbzZ24Ze0Cu
 rAE0nDAKKiyckW4pbD2kQdZGNHArvwdSwRGxsdoltWwo5B0vGzRTV4Ca36sAdHEP+mcv
 3jttKn0nj73Az4MoDZ4k2pkh9gnJgF+j6zNI5wlDvgaqu5Y6h5zzT49MKm+aCFGcsThk
 U013AU29RAjFJ0g62c99AIM86GDG1qudks0pzraKP6AHCRebJGi1JRJXHqajAbcHPC1+
 RrzaN+cGYIEU9zrcHYjWS03AT2vyxkaLXSkxtEV3UGrSpwwia2E+m8elKQSIWtU6Yhp8
 vOdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Pzjr7IHiDTSGbuYdOJZ1L0KgTpVtEtYyO9Tpe0cPJug=;
 b=tjTL8d7J9l8VLrUyzhrMTqUSg43k3/zYo9NLc4vEHKQja21EJRQgFFF9GCEi1kPnyV
 /CSsc0tog5n4oC20l/uSV/V83IVbJcsTO6BKCQpPLRbGwhkYEUD1POjtVfEvgUnHwM3Z
 DHRvuR2XiAzbiOe5BwOWQf/g6rTV5pIfmpkrOE2Vjte39uDLZ4F4lVTKCdEMJSl3l+VE
 BCfE2d/LdgZTMZWw8uCqWYCrsYWe1lumya4XR8RyQ/Ns6vAZKtWEXYf9eHli3b8sEcOB
 0eYPE0s3gOcE9F4ZdZSeOEipjtn+xBXFYeU0JU9RxfWlJUP9LLzo255aNXzpD6RRcHOC
 mHdA==
X-Gm-Message-State: APjAAAV08mFYTYLlO3gBMzlq6xm+iTzze1gPbK/1YIb2yNt1jgj0qNyF
 uMBbMEKDaYyGfil4fvc8u4w=
X-Google-Smtp-Source: APXvYqwWMhz6AYO79cLTfS4NU4cvhssRYhUgKGpZd5SwJOl1epDbyaSO+NOuQGPbFztqXTq0jw2Z7g==
X-Received: by 2002:a05:600c:145:: with SMTP id
 w5mr6972934wmm.75.1567151809265; 
 Fri, 30 Aug 2019 00:56:49 -0700 (PDT)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id u128sm1610168wmg.34.2019.08.30.00.56.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 30 Aug 2019 00:56:48 -0700 (PDT)
Date: Fri, 30 Aug 2019 09:56:47 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190830075647.wvhrx4asnkrfkkwk@pali>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190829205631.uhz6jdboneej3j3c@pali>
 <184209.1567120696@turing-police> <20190829233506.GT5281@sasha-vm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829233506.GT5281@sasha-vm>
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: devel@driverdev.osuosl.org, Christoph Hellwig <hch@infradead.org>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8sIHRoYW5rIHlvdSBmb3IgaW5wdXQhCgpPbiBUaHVyc2RheSAyOSBBdWd1c3QgMjAxOSAx
OTozNTowNiBTYXNoYSBMZXZpbiB3cm90ZToKPiBPbiBUaHUsIEF1ZyAyOSwgMjAxOSBhdCAwNzox
ODoxNlBNIC0wNDAwLCBWYWxkaXMgS2zEk3RuaWVrcyB3cm90ZToKPiA+IE9uIFRodSwgMjkgQXVn
IDIwMTkgMjI6NTY6MzEgKzAyMDAsIFBhbGkgUm9oP3Igc2FpZDoKPiA+IAo+ID4gPiBJJ20gbm90
IHJlYWxseSBzdXJlIGlmIHRoaXMgZXhmYXQgaW1wbGVtZW50YXRpb24gaXMgZnVsbHkgc3VpdGFi
bGUgZm9yCj4gPiA+IG1haW5saW5lIGxpbnV4IGtlcm5lbC4KPiA+ID4gCj4gPiA+IEluIG15IG9w
aW5pb24sIHByb3BlciB3YXkgc2hvdWxkIGJlIHRvIGltcGxlbWVudCBleEZBVCBzdXBwb3J0IGlu
dG8KPiA+ID4gZXhpc3RpbmcgZnMvZmF0LyBjb2RlIGluc3RlYWQgb2YgcmVwbGFjaW5nIHdob2xl
IHZmYXQvbXNkb3NmcyBieSB0aGlzCj4gPiA+IG5ldyAobm93IHN0YWdpbmcpIGZhdCBpbXBsZW1l
bnRhdGlvbi4KPiA+IAo+ID4gPiBJbiBsaW51eCBrZXJuZWwgd2UgcmVhbGx5IGRvIG5vdCBuZWVk
IHR3byBkaWZmZXJlbnQgaW1wbGVtZW50YXRpb24gb2YKPiA+ID4gVkZBVDMyLgo+ID4gCj4gPiBU
aGlzIHBhdGNoIGhvd2V2ZXIgZG9lcyBoYXZlIG9uZSBtYWpvciBhZHZhbnRhZ2Ugb3ZlciAicGF0
Y2ggdmZhdCB0bwo+ID4gc3VwcG9ydCBleGZhdCIgLSB3aGljaCBpcyB0aGF0IHRoZSBwYXRjaCBl
eGlzdHMuCj4gPiAKPiA+IElmIHNvbWVib2R5IGNvbWVzIGZvcndhcmQgd2l0aCBhbiBhY3R1YWwg
ImV4dGVuZCB2ZmF0IHRvIGRvIGV4ZmF0IiBwYXRjaCwKPiA+IHdlIHNob3VsZCBhdCB0aGF0IHBv
aW50IGhhdmUgYSBkaXNjdXNzaW9uIGFib3V0IHJlbGF0aXZlIG1lcml0cy4uLi4KPiAKPiBUaGlz
IHBhdGNoIGdvaW5nIGludG8gc3RhZ2luZyBkb2Vzbid0IG5lY2Vzc2FyaWx5IG1lYW4gdGhhdCBv
bmUgZGF5Cj4gaXQnbGwgZ2V0IG1vdmVkIHRvIGZzL2V4ZmF0Ly4gSXQncyB2ZXJ5IHBvc3NpYmxl
IHRoYXQgdGhlIGFwcHJvYWNoIHdvdWxkCj4gaW5zdGVhZCBiZSB0byB1c2UgdGhlIHN0YWdpbmcg
Y29kZSBmb3IgcmVmZXJlbmNlLCBidWlsZCB0aGlzCj4gZnVuY3Rpb25hbGl0eSBpbiBmcy9mYXQv
LCBhbmQga2lsbCBvZmYgdGhlIHN0YWdpbmcgY29kZSB3aGVuIGl0J3Mgbm90Cj4gbmVlZGVkIGFu
eW1vcmUuCgpTbywgaWYgY3VycmVudCBleGZhdCBjb2RlIGlzIGp1c3QgZ29pbmcgdG8gYmUgInJl
ZmVyZW5jZSIgaG93IHRvCmltcGxlbWVudCBleGZhdCBwcm9wZXJseSBpbiBmcy9mYXQsIGlzIHRo
aXMgY29ycmVjdCB1c2FnZSBvZiAic3RhZ2luZyI/CgpJIHdhcyBpbiBpbXByZXNzaW9uIHRoYXQg
c3RhZ2luZyBpcyB0aGVyZSBmb3IgZHJpdmVycyB3aGljaCBuZWVkcwpjbGVhbnVwIGFzIHRoZXkg
YXJlIG5vdCByZWFkeSB0byBiZSBwYXJ0IG9mIG1haW5saW5lLiBCdXQgbm90IHRoYXQgaXQgaXMK
Zm9yICJyYW5kb20iIGltcGxlbWVudGF0aW9uIG9mIHNvbWV0aGluZyB3aGljaCBpcyBnb2luZyB0
byBiZSBqdXN0IGEKImNvZGUgZXhhbXBsZSIgb3IgInJlZmVyZW5jZSIgZm9yIGZpbmFsIGltcGxl
bWVudGF0aW9uIHdoaWNoIHdvdWxkIGJlCmRpZmZlcmVudC4KCk1heWJlIG90aGVyIHBlb3BsZSBj
b3VsZCBjbGFyaWZ5IHN0YXRlIG9mIHN0YWdpbmcsIGlmIHRoaXMgaXMgaG93CnN0YWdpbmcgc2hv
dWxkIGJlIHVzZWQgb3Igbm90LgoKPiBXaXRoIHJlZ2FyZHMgdG8gbWlzc2luZyBzcGVjcy9kb2Nz
L3doYXRldmVyIC0gb3VyIG1haW4gY29uY2VybiB3aXRoIHRoaXMKPiByZWxlYXNlIHdhcyB0aGF0
IHdlIHdhbnQgZnVsbCBpbnRlcm9wZXJhYmlsaXR5LCB3aGljaCBpcyB3aHkgdGhlIHNwZWMKPiB3
YXMgbWFkZSBwdWJsaWMgYXMtaXMgd2l0aG91dCBtb2RpZmljYXRpb25zIGZyb20gd2hhdCB3YXMg
dXNlZAo+IGludGVybmFsbHkuIFRoZXJlJ3Mgbm8gInNlY3JldCBzYXVjZSIgdGhhdCBNaWNyb3Nv
ZnQgaXMgaGlkaW5nIGhlcmUuCgpPaywgaWYgaXQgd2FzIGp1c3QgZHJvcCBvZiAiY3VycmVudCB2
ZXJzaW9uIiBvZiBkb2N1bWVudGF0aW9uIHRoZW4gaXQKbWFrZXMgc2Vuc2UuCgo+IEhvdyBhYm91
dCB3ZSBnaXZlIHRoaXMgc3BlYy9jb2RlIHRpbWUgdG8gZ2V0IHNvYWtlZCBhbmQgcmV2aWV3ZWQg
Zm9yIGEKPiBiaXQsIGFuZCBpZiBmb2xrcyBzdGlsbCBmZWVsIChpbiBhIG1vbnRoIG9yIHNvPykg
dGhhdCB0aGVyZSBhcmUgbWlzc2luZwo+IGJpdHMgb2YgaW5mb3JtYXRpb24gcmVsYXRlZCB0byBl
eGZhdCwgSSdsbCBiZSBoYXBweSB0byBnbyBiYWNrIGFuZCB0cnkKPiB0byBnZXQgdGhlbSBvdXQg
YXMgd2VsbC4KCkJhc2ljYWxseSBleHRlcm5hbCByZWZlcmVuY2VzIGluIHRoYXQgcmVsZWFzZWQg
ZXhGQVQgc3BlY2lmaWNhdGlvbiBhcmUKdW5rbm93biAvIG5vdCByZWxlYXNlZCB5ZXQuIExpa2Ug
VGV4RkFULiBTbyBpZiB5b3UgaGF2ZSBhbiBpbnB1dCBpbiBNUwpjb3VsZCB5b3UgZm9yd2FyZCBy
ZXF1ZXN0IGFib3V0IHRoZXNlIG1pc3NpbmcgYml0cz8KCkFsc28sIE1TIGFscmVhZHkgcmVsZWFz
ZWQgc291cmNlIGNvZGUgb2YgRkFUMzIga2VybmVsIGRyaXZlcgooZmFzdGZhdC5zeXMpIGFuZCBm
cm9tIGNvZGUgY2FuIGJlIHNlZW4gdGhhdCBpdCBkb2VzIG5vdCBtYXRjaCBNUyBGQVQKc3BlY2lm
aWNhdGlvbiwgYW5kIGluY2x1ZGUgc29tZSAic2VjcmV0IHNhdWNlIiBiaXRzLiBTb3VyY2UgY29k
ZSBpcyBvbjoKaHR0cHM6Ly9naXRodWIuY29tL21pY3Jvc29mdC9XaW5kb3dzLWRyaXZlci1zYW1w
bGVzL3RyZWUvbWFzdGVyL2ZpbGVzeXMvZmFzdGZhdAoKSW4gZmFzdGZhdC5zeXMgdGhlcmUgaXMg
ZS5nLiB1c2FnZSBvZiB1bmRvY3VtZW50ZWQgYml0cyBpbiBkaXJlY3RvcnkKZW50cnkgb3IgdXNh
Z2Ugb2YgdW5kb2N1bWVudGVkIGJpdHMgZm9yIG1hcmtpbmcgZmlsZXN5c3RlbSBhcyAiZGlydHki
IC0tCmluY29ycmVjdGx5IHVubW91bnRlZC4KCldvdWxkIGl0IGJlIHBvc3NpYmxlIGZvciBNUyB0
byByZWxlYXNlIGluIHNhbWUgd2F5IGNvZGUgb2YgZXhGQVQgTlQKZHJpdmVyPyBJJ20gcmVhbGx5
IGEgYml0IHNjZXB0aWNhbCB0aGF0IGV4RkFUIE1TIGltcGxlbWVudGF0aW9uIGlzCnJlYWxseSBh
Y2NvcmRpbmcgdG8gc3RhbmRhcmQgYXMgSSBhbHJlYWR5IGtub3duIHRoYXQgRkFUMzIgaXMgbm90
LgoKSnVzdCB0byBub3RlIHRoYXQgSSBkaWQgc29tZSBpbnZlc3RpZ2F0aW9uIGluIEZBVDMyIGxl
dmVsIGhvdyBhcmUKaGFuZGxlZCB2b2x1bWUgbGFiZWxzIGFuZCBJIGZvdW5kIG1vcmUgYnVncyBp
biBjdXJyZW50IGltcGxlbWVudGF0aW9ucwoobXRvb2xzLCBkb3Nmc3Rvb2xzLCB1dGlsLWxpbnV4
IGFuZCBldmVuIGluIGZhc3RmYXQuc3lzKS4gU29tZQpyZWZlcmVuY2VzIGFyZSBvbjogaHR0cHM6
Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMva2VybmVsL21zZzI2NDA4OTEuaHRtbAoKRml4ZXMgZm9y
IG10b29scywgZG9zZnN0b29scyBhbmQgdXRpbC1saW51eCB3ZXJlIGFscmVhZHkgYXBwbGllZCBh
bmQgZml4CmZvciBNUydzIGZhc3RmYXQuc3lzIGlzIHBlbmRpbmcgaW4gb3BlbmVkIHB1bGwgcmVx
dWVzdDoKaHR0cHM6Ly9naXRodWIuY29tL21pY3Jvc29mdC9XaW5kb3dzLWRyaXZlci1zYW1wbGVz
L3B1bGwvMzAzCgpDb3VsZCB5b3UgcGxlYXNlIGZvcndhcmQgbXkgcHVsbCByZXF1ZXN0IGZvciBm
YXN0ZmF0LnN5cyBmaXhlcyB0bwphcHByb3ByaWF0ZSBwZW9wbGUvdGVhbSBpbiBNUz8KCi0tIApQ
YWxpIFJvaMOhcgpwYWxpLnJvaGFyQGdtYWlsLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
