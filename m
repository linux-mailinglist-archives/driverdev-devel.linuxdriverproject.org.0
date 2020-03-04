Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E20A61787B7
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Mar 2020 02:49:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4360A8681A;
	Wed,  4 Mar 2020 01:49:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bVchXd1ccei5; Wed,  4 Mar 2020 01:49:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E1A0886614;
	Wed,  4 Mar 2020 01:49:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D37101BF2B9
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 01:48:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C4435878A0
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 01:48:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cif9K9Wit1X6 for <devel@linuxdriverproject.org>;
 Wed,  4 Mar 2020 01:48:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com
 [209.85.219.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 928BF8789B
 for <devel@driverdev.osuosl.org>; Wed,  4 Mar 2020 01:48:58 +0000 (UTC)
Received: by mail-qv1-f68.google.com with SMTP id fc12so107315qvb.6
 for <devel@driverdev.osuosl.org>; Tue, 03 Mar 2020 17:48:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=sYxs3okr6xz3c1wRujbZrThx3HO8v9lxNWjW4D0QAIY=;
 b=Ofv0FxF0hSkLnyYIe9Rr1HAEb1VVASHgd4ZTochqnGmbjoLaOlGpab0LfbkfRt7uhj
 CWfFCcwT5oHK9grh/f8SIOocHffGKOAcu2zRZ4OwkrFCYofxvAl2oXFhtzFREpX33VT8
 9wR/HnR6KCNlvB6VnohZtTBeTmqi0lZWYtWw1izfDmtzlWoTmvkC7foe8Tybg/XcKc1G
 DAtLrf7B1SbDGK0Hum43WwV1izuPpXfm/Rf6zvJOE1jf9U3ya5+HRCTARaFLAriIy5+7
 YrB/Fo5ns3d8h0M2rOEAh4qR93GDrkwJm+65sZlbMiQrgjhqZab8+taIwwWcqEmK/WSb
 tv0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sYxs3okr6xz3c1wRujbZrThx3HO8v9lxNWjW4D0QAIY=;
 b=rFAP8qya/IUj4Y3HemsfhodNkSeeIO+HX81+BoScsp3Yb8NiuBmFtjk+aNJJKUYDXZ
 dN7hfX53bHgwd0jgmeaYXYM/77VOdqRqEuDK+xt12T9uQpTXLXJJPNp7VqkGN+5Ap5FF
 H1kv2BHCapsQRQX4PBOltd+VaDmx2yQN7EaYEcsdWcd9Pbdpg22JxhAsN9LU1lwMIwVt
 oWdu+uBtru2IspQzFthBGWRN28NoVJrroE2g1rFQfoPpgZRcGPWjTmh4LFDoCnjljs1F
 e2L2T6Mv7LkUie1n4s/XZR+SxvymS58FxLocFYZzOersWYaOv17/HE37Bddv1P0NRco2
 BcOg==
X-Gm-Message-State: ANhLgQ1lMOrpRFrow1lAAAI9Vbvl76iHsiTaiKHNSMk1UtHf5uRMEEY4
 ZRBg43pL5YkgqMSYM/5zRf7533dhL/d5K83BfM4=
X-Google-Smtp-Source: ADFU+vsww++jDBEFCtYZ/Ot2rFED5HQKKkAnFHpFiBn/IxJ4KB2vYmZugE5Natswxv4iDITu+nybWoAb7Z4uqsZghiY=
X-Received: by 2002:a0c:b920:: with SMTP id u32mr290109qvf.173.1583286537343; 
 Tue, 03 Mar 2020 17:48:57 -0800 (PST)
MIME-Version: 1.0
References: <20200205001116.14096-1-chris.packham@alliedtelesis.co.nz>
 <20200212215200.GA2367959@kroah.com>
In-Reply-To: <20200212215200.GA2367959@kroah.com>
From: YunQiang Su <wzssyqa@gmail.com>
Date: Wed, 4 Mar 2020 09:48:46 +0800
Message-ID: <CAKcpw6VczRuMC_KRzP6VRPeZPtmEpVOJE5Fc+JhDH4mWU7jUVg@mail.gmail.com>
Subject: Re: [PATCH 0/6] Re-instate octeon staging drivers
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, Paul Burton <paulburton@kernel.org>,
 linux@roeck-us.net, linux-mips <linux-mips@vger.kernel.org>,
 willy@infradead.org, linux-kernel@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Ralf Baechle <ralf@linux-mips.org>, dan.carpenter@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3JlZyBLSCA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IOS6jjIwMjDlubQy5pyIMTPml6Xl
kajlm5sg5LiK5Y2INTo1MuWGmemBk++8mgo+Cj4gT24gV2VkLCBGZWIgMDUsIDIwMjAgYXQgMDE6
MTE6MTBQTSArMTMwMCwgQ2hyaXMgUGFja2hhbSB3cm90ZToKPiA+IFRoaXMgc2VyaWVzIHJlLWlu
c3RhdGVzIHRoZSBvY3Rlb24gZHJpdmVycyB0aGF0IHdlcmUgcmVjZW50bHkgcmVtb3ZlZCBhbmQK
PiA+IGFkZHJlc3NlcyB0aGUgYnVpbGQgaXNzdWVzIHRoYXQgbGVhZCB0byB0aGF0IGRlY2lzaW9u
Lgo+ID4KPiA+IEkndmUgYXBwcm9hY2hlZCBDYXZpdW0vTWFydmVsbCBhYm91dCB0YWtpbmcgYSBt
b3JlIGFjdGl2ZSBpbnRlcmVzdCBpbiBnZXR0aW5nCj4gPiB0aGUgY29kZSBvdXQgb2Ygc3RhZ2lu
ZyBhbmQgaW50byB0aGVpciBwcm9wZXIgbG9jYXRpb24uIE5vIHJlcGx5IG9uIHRoYXQgKHlldCku
Cj4KPiBHb29kIGx1Y2sgd2l0aCB0YWxraW5nIHRvIHRoZSBjb21wYW5pZXMsIGhvcGVmdWxseSB0
aGF0IHdpbGwgd29yay4KPgo+IEFueXdheSwgSSd2ZSBhcHBsaWVkIHRoaXMgc2VyaWVzLCB0aGFu
a3MgZm9yIHRoaXMsIGxldCdzIHNlZSB3aGF0IGJyZWFrcwo+IG5vdyA6KQoKRGlkIHlvdSBtZWV0
IGFueSBwcm9ibGVtIHRvIG1lcmdlIENocmlzJ3MgcGF0Y2hzZXQ/Cgo+Cj4gZ3JlZyBrLWgKCgoK
LS0gCll1blFpYW5nIFN1Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
