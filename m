Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6F1A6A5C
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Sep 2019 15:50:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 82435863A1;
	Tue,  3 Sep 2019 13:50:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f-ItJv4GRNjO; Tue,  3 Sep 2019 13:50:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5FE738693D;
	Tue,  3 Sep 2019 13:50:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0B3651BF30A
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 13:50:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B54CF8547D
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 13:49:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x_HEzEtyD4_q for <devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 13:49:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8EBE585319
 for <devel@driverdev.osuosl.org>; Tue,  3 Sep 2019 13:49:55 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id o6so12759337oic.9
 for <devel@driverdev.osuosl.org>; Tue, 03 Sep 2019 06:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=FktHJJ+UJV2Hk/dUahUPepTrl057EHVfJavoeuM6yvg=;
 b=oypBiOmGJZLXxbRU2YFxX5DvICWjkNtIDoANVdCGB5BRFrqUWQBdk0nzocOcvQixWm
 vS8eY1SroEmDrpXmybYItp31ORXU38YlX5NC8Z/W6a3IK9fkGydbOT4/A1swO5EnFXXN
 HJVGhkXG3P7xJSk+9X9+5uToaWwWH4HgP6XbKZue2iwy7RNyswlyv/TGOZysIxEftEFP
 t72R6mIlcpLPZEoMNeZGJ0FL55WV00TRHlPspWaXhOYq4qcX/HVFtRpz5m5Oj23CwUjV
 fWm/SPNy/unQSNwI+tlgSU0wzMK+6lfpQIhvYtHcj5WxMd2gL4iQYBur00r4aMxKWo4w
 mgFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=FktHJJ+UJV2Hk/dUahUPepTrl057EHVfJavoeuM6yvg=;
 b=NuETB4RjQOymrcBqlnOivN4H+ABZ/rqcP6qxGCfk0OehtlEcbMCxTapmVmtkakkyXO
 I2uyQrbSf0+Wr4gQgcBtAZbjVes/U71+1kMbOezJuaoWc/7IIkHBhfROhc0gbGoVxcMt
 Tl2onvkvTpjQF9yAZmIHVn5SiCw3CDe55FivYL9gigAEmvSgJHldYlypJ089e9yNR8W1
 zKVGFoJgNjIEtofcan1DprvVGnR+k+l2ehI6L5bWuRfqzoYa5E2W2rKKFM+9fD52dIyx
 wvjOMH4sH7o8KG9AccdwkBwIc+qRJgw2XmmxhZg+74AMO8j+3VLg0k3lYHbNXYY2WaKS
 w/Ow==
X-Gm-Message-State: APjAAAWvnnfvNWWtxW/6D846UDQkxIhLkL+Xl4ilvhL+391KpXnpWhvq
 Hd/RZlV/o6NTXzdZhLw+PzXIy9ZKWvobljvZy+4=
X-Google-Smtp-Source: APXvYqw7IocNSQUNnmeuZCiyMstUfN59rsMpq0RE5I6ME3FN9WZHuMc+UM/S0tcCPgun0UnlsU0clqiK94tImkKow3A=
X-Received: by 2002:aca:1b11:: with SMTP id b17mr78796oib.152.1567518594779;
 Tue, 03 Sep 2019 06:49:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:5886:0:0:0:0:0 with HTTP;
 Tue, 3 Sep 2019 06:49:54 -0700 (PDT)
From: joe akaba <barrimurphy1965@gmail.com>
Date: Tue, 3 Sep 2019 15:49:54 +0200
Message-ID: <CAGZA+7p=txEw++SS5ZrJxbkcn1YqiVB8_Z=j3nxYYfophGpxfQ@mail.gmail.com>
Subject: hello
To: undisclosed-recipients:;
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
Reply-To: joeakaba00@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8KCk15IG5hbWUgaXMgSm9lIEFrYWJhSSBhbSBhIGxhd3llciBieSBwcm9mZXNzaW9uLiBJ
IHdpc2ggdG8gb2ZmZXIgeW91CnRoZSBuZXh0IG9mIGtpbiB0byBteSBjbGllbnQuIFlvdSB3aWxs
IGluaGVyaXQgdGhlIHN1bSBvZiAoJDguNSBNaWxsaW9uKQpkb2xsYXJzIG15IGNsaWVudCBsZWZ0
IGluIHRoZSBiYW5rIGJlZm9yZSBoaXMgZGVhdGguCgpNeSBjbGllbnQgaXMgYSBjaXRpemVuIG9m
IHlvdXIgY291bnRyeSB3aG8gZGllZCBpbiBhdXRvIGNyYXNoIHdpdGggaGlzIHdpZmUKYW5kIG9u
bHkgc29uLiBJIHdpbGwgYmUgZW50aXRsZWQgd2l0aCA1MCUgb2YgdGhlIHRvdGFsIGZ1bmQgd2hp
bGUgNTAlIHdpbGwKYmUgZm9yIHlvdS4KUGxlYXNlIGNvbnRhY3QgbXkgcHJpdmF0ZSBlbWFpbCBo
ZXJlIGZvciBtb3JlIGRldGFpbHM6am9lYWthYmEwMEBnbWFpbC5jb20KCk1hbnkgdGhhbmtzIGlu
IGFkdmFuY2UsCk1yLkpvZSBBa2FiYQoKCkhhbGxvCgpNZWluIE5hbWUgaXN0IEpvZSBBa2FiYS4g
SWNoIGJpbiB2b24gQmVydWYgUmVjaHRzYW53YWx0LiBJY2ggbcO2Y2h0ZQpJaG5lbiBhbmJpZXRl
bgpkaWUgbsOkY2hzdGVuIFZlcndhbmR0ZW4genUgbWVpbmVtIEtsaWVudGVuLiBTaWUgZXJiZW4g
ZGllIFN1bW1lIHZvbgooOCw1IE1pbGxpb25lbiBVUy1Eb2xsYXIpCkRvbGxhciwgZGllIG1laW4g
S3VuZGUgdm9yIHNlaW5lbSBUb2QgaW4gZGVyIEJhbmsgZ2VsYXNzZW4gaGF0LgoKTWVpbiBNYW5k
YW50IGlzdCBlaW4gU3RhYXRzYsO8cmdlciBJaHJlcyBMYW5kZXMsIGRlciBtaXQgc2VpbmVyIEZy
YXUKYmVpIGVpbmVtIEF1dG91bmZhbGwgdW1zIExlYmVuIGdla29tbWVuIGlzdAp1bmQgbnVyIFNv
aG4uIEljaCB3ZXJkZSBtaXQgNTAlIGRlcyBHZXNhbXRmb25kcyBiZXJlY2h0aWd0IHNlaW4sIHfD
pGhyZW5kIDUwJQpzZWluIGbDvHIgZGljaC4KQml0dGUga29udGFrdGllcmVuIFNpZSBtZWluZSBw
cml2YXRlIEUtTWFpbCBoaWVyIGbDvHIgd2VpdGVyZQpJbmZvcm1hdGlvbmVuOiBqb2Vha2FiYTAw
QGdtYWlsLmNvbQoKVmllbGVuIERhbmsgaW0gVm9yYXVzLApNci5Kb2UgQWthYmEKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
