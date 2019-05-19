Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF5522697
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 12:26:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E461863DE;
	Sun, 19 May 2019 10:26:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RLPobTQ61Cst; Sun, 19 May 2019 10:26:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE1A1861F4;
	Sun, 19 May 2019 10:26:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C0DC1BF616
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 10:26:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 881DB861A4
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 10:26:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MrBk9ZIH3h6v for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 10:26:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B7556861A3
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 10:26:46 +0000 (UTC)
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E78B214C6;
 Sun, 19 May 2019 10:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558261606;
 bh=1zR31saxehPnsex0bI+S/uyzkj4IbV2AcviDgFyjyAY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QDQRfaND21P7wsMyDDuUyDGn8uC3Pd+MQ199hpzMvL0lcxzr920C+mKtU79wyWlil
 9Xq2DQESYKE+4MAWJZVohn2oIWoMs7rMalAzuCPP6akKnwpMCa2bGWVTbW3GJ8i7Cz
 Vck/q2rtdZDhVgBxcOZzXo4I8Yu0kAFxedvDCz3U=
Date: Sun, 19 May 2019 11:26:41 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: =?UTF-8?B?QsOhcmJhcmE=?= Fernandes <barbara.fernandes@usp.br>
Subject: Re: [PATCH 2/2] staging: iio: cdc: ad7150: create macro for
 capacitance channels
Message-ID: <20190519112641.23f05287@archlinux>
In-Reply-To: <20190518224136.16942-3-barbara.fernandes@usp.br>
References: <20190518224136.16942-1-barbara.fernandes@usp.br>
 <20190518224136.16942-3-barbara.fernandes@usp.br>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Wilson Sales <spoonm@spoonm.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCAxOCBNYXkgMjAxOSAxOTo0MTozNiAtMDMwMApCw6FyYmFyYSBGZXJuYW5kZXMgPGJh
cmJhcmEuZmVybmFuZGVzQHVzcC5icj4gd3JvdGU6Cgo+IENyZWF0ZSBtYWNybyBmb3IgY2FwYWNp
dGFuY2UgY2hhbm5lbHMgaW4gb3JkZXIgdG8gcmVtb3ZlIHRoZSByZXBlYXRlZAo+IGNvZGUgYW5k
IGltcHJvdmUgaXRzIHJlYWRhYmlsaXR5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IELDoXJiYXJhIEZl
cm5hbmRlcyA8YmFyYmFyYS5mZXJuYW5kZXNAdXNwLmJyPgo+IFNpZ25lZC1vZmYtYnk6IFdpbHNv
biBTYWxlcyA8c3Bvb25tQHNwb29ubS5vcmc+Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBXaWxzb24gU2Fs
ZXMgPHNwb29ubUBzcG9vbm0ub3JnPgpOb3QgYSB0b3RhbGx5IGNsZWFyIGN1dCBjYXNlIGdpdmVu
IHRoZXJlIGFyZSBvbmx5IHR3byBpbnN0YW5jZXMsIGJ1dApJIHRoaW5rLCBvbiBiYWxhbmNlIHRo
YXQgaXQgaXMgYW4gaW1wcm92ZW1lbnQuCgpBcyB0aGlzIGlzbid0IHJlYWxseSBjb25uZWN0ZWQg
dG8gcGF0Y2ggMSBpbiB0aGUgc2VyaWVzIChvciB0aGUgZml4CmdvaW5nIHZpYSB0aGUgb3RoZXIg
dHJlZSkgSSdsbCBhcHBseSB0aGlzIG9uZSBub3cuICBQbGVhc2Ugb25seQpzZW5kIGEgbmV3IHZl
cnNpb24gb2YgcGF0Y2ggMS4KCkFwcGxpZWQgdG8gdGhlIHRvZ3JlZyBicmFuY2ggb2YgaWlvLmdp
dCBhbmQgcHVzaGVkIG91dCBhcyB0ZXN0aW5nCmZvciB0aGUgYXV0b2J1aWxkZXJzICgwLWRheSBl
dGMpIHRvIHNlZSBpZiB0aGV5IGNhbiBmaW5kIGFueXRoaW5nCndlIGhhdmUgbWlzc2VkLgoKU29t
ZSB0aW1lIGFmdGVyIHRob3NlIHRlc3QgcmVzdWx0cyBoYXZlIGNvbWUgaW4sIEknbGwgcHVzaCB0
aGUgdHJlZQpvdXQgYXMgdG9ncmVnLCBhbmQgaW4gYSBmZXcgd2Vla3Mgc2VuZCBhIHB1bGwgcmVx
dWVzdCB0byBHcmVnIHRvCmhvcGVmdWxseSBoYXZlIGl0IHB1bGxlZCBpbnRvIGhpcyB0cmVlIHdo
aWNoIGlzIHBhcnQgb2YgTGludXggbmV4dAphbmQgZnJvbSB3aGljaCBoZSB3aWxsIHRoZW4gc2Vu
ZCBhIHB1bGwgcmVxdWVzdCB0byBMaW51cyBpbiB0aGUKbmV4dCBtZXJnZSB3aW5kb3cuCgpUaGFu
a3MsCgpKb25hdGhhbgoKCj4gLS0tCj4gIGRyaXZlcnMvc3RhZ2luZy9paW8vY2RjL2FkNzE1MC5j
IHwgMjkgKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEy
IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3N0YWdpbmcvaWlvL2NkYy9hZDcxNTAuYyBiL2RyaXZlcnMvc3RhZ2luZy9paW8vY2RjL2FkNzE1
MC5jCj4gaW5kZXggMDcyMDk0MjI3ZTFiLi5kOGM0M2NhYmNlMjUgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9zdGFnaW5nL2lpby9jZGMvYWQ3MTUwLmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvaWlv
L2NkYy9hZDcxNTAuYwo+IEBAIC00NjgsMjQgKzQ2OCwxOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IGlpb19ldmVudF9zcGVjIGFkNzE1MF9ldmVudHNbXSA9IHsKPiAgCX0sCj4gIH07Cj4gIAo+ICsj
ZGVmaW5lIEFENzE1MF9DQVBBQ0lUQU5DRV9DSEFOKF9jaGFuKQl7CQkJXAo+ICsJCS50eXBlID0g
SUlPX0NBUEFDSVRBTkNFLAkJCVwKPiArCQkuaW5kZXhlZCA9IDEsCQkJCQlcCj4gKwkJLmNoYW5u
ZWwgPSBfY2hhbiwJCQkJXAo+ICsJCS5pbmZvX21hc2tfc2VwYXJhdGUgPSBCSVQoSUlPX0NIQU5f
SU5GT19SQVcpIHwJXAo+ICsJCUJJVChJSU9fQ0hBTl9JTkZPX0FWRVJBR0VfUkFXKSwJCQlcCj4g
KwkJLmV2ZW50X3NwZWMgPSBhZDcxNTBfZXZlbnRzLAkJCVwKPiArCQkubnVtX2V2ZW50X3NwZWNz
ID0gQVJSQVlfU0laRShhZDcxNTBfZXZlbnRzKSwJXAo+ICsJfQo+ICsKPiAgc3RhdGljIGNvbnN0
IHN0cnVjdCBpaW9fY2hhbl9zcGVjIGFkNzE1MF9jaGFubmVsc1tdID0gewo+IC0Jewo+IC0JCS50
eXBlID0gSUlPX0NBUEFDSVRBTkNFLAo+IC0JCS5pbmRleGVkID0gMSwKPiAtCQkuY2hhbm5lbCA9
IDAsCj4gLQkJLmluZm9fbWFza19zZXBhcmF0ZSA9IEJJVChJSU9fQ0hBTl9JTkZPX1JBVykgfAo+
IC0JCUJJVChJSU9fQ0hBTl9JTkZPX0FWRVJBR0VfUkFXKSwKPiAtCQkuZXZlbnRfc3BlYyA9IGFk
NzE1MF9ldmVudHMsCj4gLQkJLm51bV9ldmVudF9zcGVjcyA9IEFSUkFZX1NJWkUoYWQ3MTUwX2V2
ZW50cyksCj4gLQl9LCB7Cj4gLQkJLnR5cGUgPSBJSU9fQ0FQQUNJVEFOQ0UsCj4gLQkJLmluZGV4
ZWQgPSAxLAo+IC0JCS5jaGFubmVsID0gMSwKPiAtCQkuaW5mb19tYXNrX3NlcGFyYXRlID0gQklU
KElJT19DSEFOX0lORk9fUkFXKSB8Cj4gLQkJQklUKElJT19DSEFOX0lORk9fQVZFUkFHRV9SQVcp
LAo+IC0JCS5ldmVudF9zcGVjID0gYWQ3MTUwX2V2ZW50cywKPiAtCQkubnVtX2V2ZW50X3NwZWNz
ID0gQVJSQVlfU0laRShhZDcxNTBfZXZlbnRzKSwKPiAtCX0sCj4gKwlBRDcxNTBfQ0FQQUNJVEFO
Q0VfQ0hBTigwKSwKPiArCUFENzE1MF9DQVBBQ0lUQU5DRV9DSEFOKDEpCj4gIH07Cj4gIAo+ICAv
KgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
