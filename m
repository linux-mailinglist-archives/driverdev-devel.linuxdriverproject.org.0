Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4062A3B3
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 May 2019 11:24:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0968988A8C;
	Sat, 25 May 2019 09:24:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id izyEISKhvLFt; Sat, 25 May 2019 09:24:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 75975889D4;
	Sat, 25 May 2019 09:24:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B0551BF3A6
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 09:24:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 880078897C
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 09:24:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bd0wm5-bcmCQ for <devel@linuxdriverproject.org>;
 Sat, 25 May 2019 09:24:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A1D5888938
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 09:24:09 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id f1so8790763lfl.6
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 02:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=zLPXe8YfAMWrMxZxyor/59W4BIdpO5GJjp5HzwcajBk=;
 b=O2xcEAc62rrzl5ZEYLoz6T0zW68KCQMp9xLEnRtfDTBVONdXteRWJBL3z1vwwO5nb3
 g3I8gtYILSeK6gkJKljYdYKdMSG+Q5Izz6Whe0179wVLBIPGuYYL0BM6hZ2VWj8W2xCd
 cGLEdSDVus4RM60IYAQbIesFBt70sYFHnJgSeQSgkVPNpUa0txrEzBsmeQNsre+KGwpG
 yJRrhr3SDWmzL8GduHA0Ck3AzUJo6q6xS1LWKcpFJ9nLhdYds5rY9tmJ5sWHvJlOn6Rq
 9dSpI5V4ug6pjb/yh9xUEtMPnx8nfS1km03uRPB7B0roBf0Vl/tACBRZnLUIN19WuPzg
 vsPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=zLPXe8YfAMWrMxZxyor/59W4BIdpO5GJjp5HzwcajBk=;
 b=heXglOJwQytSmP1cJgzf7sZnIGWgKnH7vsWH4Vo03LFaGbcQvSZTswOuorEoMsyt2n
 3tbiJkGvcjlNJcRAYqeklNXTKHlv1LEnOHRLdJdWdhfn+F0ee50EXI1sZDw1wSXAm4hF
 BesVDGZShMhLVs7nnM0fsXkCgUGhRpylZ8ZFs5F6gtyPg4K54j/zEicQQ2TcGctO4MIB
 yj7O9g1Xuk2+Tf0Qb+9Jj83J7AJ9V/7EMPINCrDEhHaTc+SOFNIafvTD0N3VQwMF+mfR
 KYAVUxuC1K5xMCxIqnYfTm+Ny6BnWiVlYGQFH9CntxEfnCHMjZkzLOIMg6OQTsH3wLTE
 vKkQ==
X-Gm-Message-State: APjAAAWuScLn6X69ai3R3/BbXN0wcQnNva6yUUG9OLfirPE//ppb3bXs
 Z0+X0DIM0fCv3kqM2uCTevWNKA==
X-Google-Smtp-Source: APXvYqybSZykR0c6vHf89ir+w3lQi90PZd4QnIShqRFeafVjYcq59+X5gjxiJ/oXmhEnHMIAM6oduw==
X-Received: by 2002:ac2:51a3:: with SMTP id f3mr807910lfk.125.1558776247159;
 Sat, 25 May 2019 02:24:07 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id h14sm979318ljj.11.2019.05.25.02.24.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 25 May 2019 02:24:06 -0700 (PDT)
Date: Sat, 25 May 2019 11:24:04 +0200
From: Simon =?utf-8?Q?Sandstr=C3=B6m?= <simon@nikanor.nu>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/2] staging: kpc2000: add missing dependencies for kpc2000
Message-ID: <20190525092404.go3qlfknra6g3fot@dev.nikanor.nu>
References: <20190524203058.30022-1-simon@nikanor.nu>
 <20190524203058.30022-3-simon@nikanor.nu>
 <20190525050017.GA18684@kroah.com>
 <20190525083918.dxa5qtomlu5yyqw5@dev.nikanor.nu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190525083918.dxa5qtomlu5yyqw5@dev.nikanor.nu>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCBNYXkgMjUsIDIwMTkgYXQgMTA6Mzk6MThBTSArMDIwMCwgU2ltb24gU2FuZHN0csO2
bSB3cm90ZToKPiBPbiBTYXQsIE1heSAyNSwgMjAxOSBhdCAwNzowMDoxN0FNICswMjAwLCBHcmVn
IEtIIHdyb3RlOgo+ID4gCj4gPiBUaGlzIGlzIGFscmVhZHkgaW4gbGludXgtbmV4dCAoaW4gYSBk
aWZmZXJlbnQgZm9ybSksIGFyZSB5b3Ugc3VyZSB5b3UKPiA+IGFyZSB3b3JraW5nIGFnYWluc3Qg
dGhlIGxhdGVzdCBrZXJuZWwgdHJlZT8KPiA+IAo+ID4gdGhhbmtzLAo+ID4gCj4gPiBncmVnIGst
aAo+IAo+IEl0J3MgYmFzZWQgb24geW91ciBzdGFnaW5nIHRyZWUuIEkgdGhpbmsgdGhhdCBJIGhh
dmUgdG8gZ28gYmFjayBhbmQgcmVhZAo+IGFib3V0IG5leHQgdHJlZXMgYWdhaW4sIGJlY2F1c2Ug
SSB0aG91Z2h0IGl0IHRvb2sgbG9uZ2VyIHRpbWUgZm9yIHRoaW5ncwo+IHRvIGdldCBmcm9tIHN0
YWdpbmctbmV4dCB0byBsaW51eC1uZXh0Lgo+IAo+IEFueXdheSwgbmVpdGhlciB0aGUgTUZEX0NP
UkUgbm9yIHRoZSB0eXBvIGZpeCBpcyBpbiBsaW51eC1uZXh0IHNvIEkKPiBndWVzcyB0aGF0IEkg
Y291bGQganVzdCByZWJhc2UgdGhpcyBvbiBsaW51eC1uZXh0IGFuZCByZS1zZW5kIGFzIHYyLgo+
IEknbSBub3Qgc3VyZSBpZiBNRkRfQ09SRSBzaG91bGQgYmUgImRlcGVuZHMgb24iIG9yICJzZWxl
Y3QiIHRob3VnaC4uLgo+IAo+IAo+IC0gU2ltb24KCk9oLCBpdCBtdXN0IGJlICJzZWxlY3QgTUZE
X0NPUkUiIGJlY2F1c2UgdGhlcmUgaXMgbm8gcHJvbXB0IGZvcgpNRkRfQ09SRT8gU2hvdWxkIEkg
anVzdCByZWJhc2UgaXQgb24gbGludXgtbmV4dCBhbmQgcmUtc2VuZCBhcyB2MiB0aGVuPwoKCi0g
U2ltb24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==
