Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F4025AC6E
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 16:00:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 22A21871D9;
	Wed,  2 Sep 2020 14:00:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MFFuaLZbT0IH; Wed,  2 Sep 2020 14:00:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C29E486F84;
	Wed,  2 Sep 2020 14:00:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A3821BF303
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 14:00:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 33BB78683F
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 14:00:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dj-dTlhkwE+R for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 14:00:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1850E85725
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 14:00:06 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id s2so2381053pjr.4
 for <devel@driverdev.osuosl.org>; Wed, 02 Sep 2020 07:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=4dcRwjz1s1csX6AJeRsJaJoQkhF+IffbkvIIRG1ifvo=;
 b=GxNyzBhmbUbco22yiPt89zB0uDIK5sv/wJtKrrZQZKYJYir5JrZI+VujGdPxpnrncU
 MSE8jSu+n5w1xqLilKadjA8pGGHPFmrQIy4aivBmKA/WqhP1S5iXGxIEObGvQEx5uSlF
 mOJldA+0y1jmqZ7A84vJdCG/MWIvbxlvqrni2aGpxpC6ukzEPFblx+GHDlFP2Y1Q0/SO
 H25Wfovg6NZC+o2jE4XGNmE0ZCZUfd9s90s/R8XDKaywrWyouOpaCSLMpa8y+6oH5bQs
 wjZdKSKBPtUx+g/lQAid6UaK1B8wGAxn2OynHDYHEPpotx2S96ENktBTrmBDKW3hADFN
 vJtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=4dcRwjz1s1csX6AJeRsJaJoQkhF+IffbkvIIRG1ifvo=;
 b=q/6R6L7+ucFj64LWAaqdTggjkXY3gbOWuoFEk+MDmNi3PujkPQTSunbZGN9gC+Kk3/
 NkImJ+9toTO2YPfwtErWJb1qEQx9RmAU3VulHJKxiYC8i4plcIztuwykZfRIRwbdrCMs
 0l7d9O1SyyWb53wIXq6HKe17ym7UD82NAef6duFaNqUF7LoZBnsAZqkFf3Z6djk08HL0
 BkNXd/JGFGTRzBscT6P05nrNdAHjbF168k+c+mCTEQmDkKM3sjy6aaUuVbsuKuwe1jSl
 GfeH8Rnt+RrKdCmwLJxq8COrLmwZOTKepGanS3mGron+D7LcKQVnmsojxcDw5hK6cUip
 lSNQ==
X-Gm-Message-State: AOAM531m5TR6spLFzTt4dE5PC5meJfyZtf9zfaOXhjUiL9rQ4+GvMPXh
 azIh5nus5yp+jEUZvNX1nKo=
X-Google-Smtp-Source: ABdhPJw0G+CAri9uK6EPx9JuyMKErX89MtRXrDoep9PQfAEqaQUg7YZEmumP+oKYa1Im6FRNdUDsSw==
X-Received: by 2002:a17:90a:d315:: with SMTP id
 p21mr2475624pju.88.1599055205640; 
 Wed, 02 Sep 2020 07:00:05 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id lb1sm4321084pjb.26.2020.09.02.07.00.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Sep 2020 07:00:05 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Wed, 2 Sep 2020 22:00:00 +0800
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [PATCH v2] staging: qlge: fix build breakage with dumping enabled
Message-ID: <20200902140000.jcarw6eqryyergig@Rk>
References: <20200826232735.104077-1-coiby.xu@gmail.com>
 <20200827005010.GA46897@f3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200827005010.GA46897@f3>
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
Cc: devel@driverdev.osuosl.org, "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCBBdWcgMjcsIDIwMjAgYXQgMDk6NTA6MTBBTSArMDkwMCwgQmVuamFtaW4gUG9pcmll
ciB3cm90ZToKPk9uIDIwMjAtMDgtMjcgMDc6MjcgKzA4MDAsIENvaWJ5IFh1IHdyb3RlOgo+PiBU
aGlzIGZpeGVzIGNvbW1pdCAwMTA3NjM1ZTE1YWMKPj4gKCJzdGFnaW5nOiBxbGdlOiByZXBsYWNl
IHByX2VyciB3aXRoIG5ldGRldl9lcnIiKSB3aGljaCBpbnRyb2R1Y2VkIGFuCj4+IGJ1aWxkIGJy
ZWFrYWdlIG9mIG1pc3NpbmcgYHN0cnVjdCBxbF9hZGFwdGVyICpxZGV2YCBmb3Igc29tZSBmdW5j
dGlvbnMKPj4gYW5kIGEgd2FybmluZyBvZiB0eXBlIG1pc21hdGNoIHdpdGggZHVtcGluZyBlbmFi
bGVkLCBpLmUuLAo+Pgo+PiAkIG1ha2UgQ0ZMQUdTX01PRFVMRT0iUUxfQUxMX0RVTVA9MSBRTF9P
Ql9EVU1QPTEgUUxfQ0JfRFVNUD0xIFwKPj4gICBRTF9JQl9EVU1QPTEgUUxfUkVHX0RVTVA9MSBR
TF9ERVZfRFVNUD0xIiBNPWRyaXZlcnMvc3RhZ2luZy9xbGdlCj4+Cj4+IHFsZ2VfZGJnLmM6IElu
IGZ1bmN0aW9uIOKAmHFsX2R1bXBfb2JfbWFjX3JzcOKAmToKPj4gcWxnZV9kYmcuYzoyMDUxOjEz
OiBlcnJvcjog4oCYcWRlduKAmSB1bmRlY2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlv
bik7IGRpZCB5b3UgbWVhbiDigJhjZGV24oCZPwo+PiAgMjA1MSB8ICBuZXRkZXZfZXJyKHFkZXYt
Pm5kZXYsICIlc1xuIiwgX19mdW5jX18pOwo+PiAgICAgICB8ICAgICAgICAgICAgIF5+fn4KPj4g
cWxnZV9kYmcuYzogSW4gZnVuY3Rpb24g4oCYcWxfZHVtcF9yb3V0aW5nX2VudHJpZXPigJk6Cj4+
IHFsZ2VfZGJnLmM6MTQzNToxMDogd2FybmluZzogZm9ybWF0IOKAmCVz4oCZIGV4cGVjdHMgYXJn
dW1lbnQgb2YgdHlwZSDigJhjaGFyICrigJksIGJ1dCBhcmd1bWVudCAzIGhhcyB0eXBlIOKAmGlu
dOKAmSBbLVdmb3JtYXQ9XQo+PiAgMTQzNSB8ICAgICAgICAiJXM6IFJvdXRpbmcgTWFzayAlZCA9
IDB4JS4wOHhcbiIsCj4+ICAgICAgIHwgICAgICAgICB+Xgo+PiAgICAgICB8ICAgICAgICAgIHwK
Pj4gICAgICAgfCAgICAgICAgICBjaGFyICoKPj4gICAgICAgfCAgICAgICAgICVkCj4+ICAxNDM2
IHwgICAgICAgIGksIHZhbHVlKTsKPj4gICAgICAgfCAgICAgICAgfgo+PiAgICAgICB8ICAgICAg
ICB8Cj4+ICAgICAgIHwgICAgICAgIGludAo+PiBxbGdlX2RiZy5jOjE0MzU6Mzc6IHdhcm5pbmc6
IGZvcm1hdCDigJgleOKAmSBleHBlY3RzIGEgbWF0Y2hpbmcg4oCYdW5zaWduZWQgaW504oCZIGFy
Z3VtZW50IFstV2Zvcm1hdD1dCj4+ICAxNDM1IHwgICAgICAgICIlczogUm91dGluZyBNYXNrICVk
ID0gMHglLjA4eFxuIiwKPj4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IH5+fn5eCj4+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+
PiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGlu
dAo+Pgo+PiBGaXhlczogMDEwNzYzNWUxNWFjICgic3RhZ2luZzogcWxnZTogcmVwbGFjZSBwcl9l
cnIgd2l0aCBuZXRkZXZfZXJyIikKPj4gUmVwb3J0ZWQtYnk6IEJlbmphbWluIFBvaXJpZXIgPGJl
bmphbWluLnBvaXJpZXJAZ21haWwuY29tPgo+PiBTdWdnZXN0ZWQtYnk6IEJlbmphbWluIFBvaXJp
ZXIgPGJlbmphbWluLnBvaXJpZXJAZ21haWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBDb2lieSBY
dSA8Y29pYnkueHVAZ21haWwuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvc3RhZ2luZy9xbGdlL3Fs
Z2UuaCAgICAgIHwgMjAgKysrKysrKysrKy0tLS0tLS0tLS0KPj4gIGRyaXZlcnMvc3RhZ2luZy9x
bGdlL3FsZ2VfZGJnLmMgIHwgMjQgKysrKysrKysrKysrKysrKysrLS0tLS0tCj4+ICBkcml2ZXJz
L3N0YWdpbmcvcWxnZS9xbGdlX21haW4uYyB8ICA4ICsrKystLS0tCj4+ICAzIGZpbGVzIGNoYW5n
ZWQsIDMyIGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygtKQo+Pgo+Wy4uLl0KPj4gQEAgLTE2
MzIsNiArMTYzNSw4IEBAIHZvaWQgcWxfZHVtcF93cWljYihzdHJ1Y3Qgd3FpY2IgKndxaWNiKQo+
Pgo+PiAgdm9pZCBxbF9kdW1wX3R4X3Jpbmcoc3RydWN0IHR4X3JpbmcgKnR4X3JpbmcpCj4+ICB7
Cj4+ICsJc3RydWN0IHFsX2FkYXB0ZXIgKnFkZXYgPSB0eF9yaW5nLT5xZGV2Owo+PiArCj4+ICAJ
aWYgKCF0eF9yaW5nKQo+PiAgCQlyZXR1cm47Cj4KPkdpdmVuIHRoZSBudWxsIGNoZWNrIGZvciB0
eF9yaW5nLCBpdCBzZWVtcyB1bndpc2UgdG8gZGVyZWZlcmVuY2UgdHhfcmluZwo+YmVmb3JlIHRo
ZSBjaGVjay4KPgo+TG9va2luZyBhdCBxbF9kdW1wX2FsbCgpLCBJJ20gbm90IHN1cmUgdGhhdCB0
aGUgY2hlY2sgaXMgbmVlZGVkIGF0IGFsbAo+dGhvdWdoLiBNYXliZSBpdCBzaG91bGQgYmUgcmVt
b3ZlZC4KPgo+U2FtZSBwcm9ibGVtIGluIHFsX2R1bXBfcnhfcmluZygpLgoKVGhhbmsgeW91IGZv
ciB0aGUgc3BvdHRpbmcgdGhpcyBpc3N1ZSEgSSdsbCByZW1vdmUgdGhlIGNoZWNrLgoKPgo+PiAg
CW5ldGRldl9lcnIocWRldi0+bmRldiwgIj09PT09PT09PT09PT09PT09PT09PSBEdW1waW5nIHR4
X3JpbmcgJWQgPT09PT09PT09PT09PT09XG4iLAo+PiBAQCAtMTY1Nyw2ICsxNjYyLDggQEAgdm9p
ZCBxbF9kdW1wX3R4X3Jpbmcoc3RydWN0IHR4X3JpbmcgKnR4X3JpbmcpCj4+ICB2b2lkIHFsX2R1
bXBfcmljYihzdHJ1Y3QgcmljYiAqcmljYikKPj4gIHsKPj4gIAlpbnQgaTsKPj4gKwlzdHJ1Y3Qg
cWxfYWRhcHRlciAqcWRldiA9Cj4+ICsJCWNvbnRhaW5lcl9vZihyaWNiLCBzdHJ1Y3QgcWxfYWRh
cHRlciwgcmljYik7Cj4KPkhlcmUsIGRhdmVtIHdvdWxkIHBvaW50IG91dCB0aGF0IHRoZSB2YXJp
YWJsZXMgYXJlIG5vdCBkZWNsYXJlZCBpbgo+InJldmVyc2UgeG1hcyB0cmVlIiBvcmRlci4KCkkn
bGwgbWFrZSBkYXZlbSBoYXBweSB0aGVuOikKCi0tCkJlc3QgcmVnYXJkcywKQ29pYnkKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
