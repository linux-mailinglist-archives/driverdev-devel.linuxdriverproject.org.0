Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E524E30E2F
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 May 2019 14:37:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08FE486BC5;
	Fri, 31 May 2019 12:37:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xXwjRdqyrTho; Fri, 31 May 2019 12:37:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D770986717;
	Fri, 31 May 2019 12:37:51 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2AE501BF23C
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 12:37:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 281B683702
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 12:37:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WVlCij12TRMQ
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 12:37:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
 [209.85.167.173])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D84E8835C4
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 12:37:47 +0000 (UTC)
Received: by mail-oi1-f173.google.com with SMTP id 203so7529951oid.13
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 05:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tRjQ3Cm5MnELuPZBEnQ6RsfPHdxtG12UVKZOlt/exzI=;
 b=ux82XQPifyDgjDPbXPuiblxBSMfiAkFhMQBq4JgPtkfgsZy/sy2wM/hDnqcm7adhUh
 w4TDXJmbzMrCTKk6aeAwkcYfQmT8okabMd56bbf2i1+cUpHmzLl7AFj+U4kiKlQz/MHX
 qU8TlsF+T060UfDdFpTFO+0qTqTo/5213UuIOWq7fYv8LRAIVKHeOANjezJKOE+QtUg5
 V3iusGCLymPMzvekg3ldFykkZVzOe0A73GMWUBUk3ihJg7/WWmVo+dv8chBNuKS3/PPh
 ewKXSRMTg1kw+J/1lt+502iLYOcbEIIpH/eRxCU9lKI51lFHcEZDqzvkYZc9CZUd3fok
 EcbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tRjQ3Cm5MnELuPZBEnQ6RsfPHdxtG12UVKZOlt/exzI=;
 b=dcBdhTyGSQ8OGoZor2jtpzGiVCPxCwtD5bbaJ2Qmg0WmJb6vzVNKvZ0riFagopUXYe
 YIqz07eyDZ54CY6+w/rEN0riqtvSK04vWYnkbuj4RC2ixLtPMfm4VtQWe/4X2VRpyReq
 lfJkJWL/uTKf2Equpye+DUmNEDq/336N+Z9Hz4iddoRfHLulHRIyvsAV4BZtJuQgubQJ
 O5vx3OEpuYuBKdgtlc1d8MacbS9fy8I3B8t2OlVr71mWcjq5yMYI4lbhCmA/JURj5GjC
 jFYcUzuL3323d4XoLKi6KJmilCMsVUMn7AkmDGFjNmiqmXBLRXs8oGKlz1nayS+/nxUX
 2smw==
X-Gm-Message-State: APjAAAUXKOR0+B4o1mZFHcgjn5izyYrMkXUPYg4FHojkklZwFr2gH+kL
 L0f742TWnn178msMGNZdccffytfxl9JVcN/GJxc=
X-Google-Smtp-Source: APXvYqxrN2ZVcB0W2EPN08rEuoGIr0NvNcep0h+7K5EiF28dmbBDJjRoj0zHlMMaiPD6O4pZiKbpApWA35zYu0wCPQc=
X-Received: by 2002:aca:2316:: with SMTP id e22mr925273oie.116.1559306267005; 
 Fri, 31 May 2019 05:37:47 -0700 (PDT)
MIME-Version: 1.0
References: <678a78fd-a7f4-5a1f-9819-51c5a0731877@kernel.org>
 <CAMhs-H-Js2wiF5yH3pB5bFq9SE1X17OovsXtYuNH+obe0owknw@mail.gmail.com>
 <5a7dc59b-f9ef-beab-7221-231f64716d5a@kernel.org>
 <CAMhs-H-8EQPPy0vMFCG-PKu3RLz4_d0ucO6bCgMCfMuD7ZYRSg@mail.gmail.com>
 <a2f6ee9c-dc4e-a7e7-8723-880a3472e9ba@kernel.org>
 <CAMhs-H8der72iXY0NFhXLUyTHvsBZ3t5VUagfgiO4CwuXhAXKw@mail.gmail.com>
 <9224bde1-ea67-db9f-570f-178bbc8e6b40@kernel.org>
 <CAMhs-H8vutK=KLHVGwpvY2bmx3khpjW5U=2jC=-pEV_HLZP5-Q@mail.gmail.com>
 <4aa016a4-9fac-5273-0f7f-d372f0de34ba@kernel.org>
 <CAMhs-H9M8D2nWibZqKeBEZ8y+E38iTRk7sB28vHb0-P5tU8+EA@mail.gmail.com>
 <9e24fe2f-42df-7b1f-2cd5-82d3f82f688b@kernel.org>
 <CAMhs-H-GtrJZKx2Y3GhoXn9O=C4xx1QAeQ1CYt51LwrFY7y1sQ@mail.gmail.com>
 <7335025e-372d-c5bd-80ee-75b3e0c61249@kernel.org>
 <CAMhs-H_zFUecOu95U-xekQ3Da5psbc6YdQttosCJbZi5vetKSw@mail.gmail.com>
 <790e5f32-5c70-e277-46ad-7956aaf32af3@kernel.org>
 <ddd690f9-a2d6-5fbf-260e-9e535d81b3e6@kernel.org>
In-Reply-To: <ddd690f9-a2d6-5fbf-260e-9e535d81b3e6@kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 31 May 2019 14:37:35 +0200
Message-ID: <CAMhs-H-x_O21iq=Xm6LDFTTR4xVS4NrN9ePiCLsLpnxVQXieKA@mail.gmail.com>
Subject: Re: staging: mt7621-pci: factor out 'mt7621_pcie_enable_port' function
To: Greg Ungerer <gerg@kernel.org>
Content-Type: multipart/mixed; boundary="000000000000247f3e058a2e485c"
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
Cc: NeilBrown <neil@brown.name>, driverdev-devel@linuxdriverproject.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--000000000000247f3e058a2e485c
Content-Type: text/plain; charset="UTF-8"

Hi Greg,

On Thu, May 30, 2019 at 3:46 AM Greg Ungerer <gerg@kernel.org> wrote:
>
> Hi Sergio,
>
> On 30/5/19 10:44 am, Greg Ungerer wrote:
> > On 29/5/19 6:08 pm, Sergio Paracuellos wrote:
> > [snip]
> >> I have added gpio consumer stuff and reorder a bit the code to be more
> >> similar to 4.20.
> >>
> >> I attach the patch. I have not try it to compile it, because my normal
> >> environment is in another
> >> computer and I am in the middle of moving from my current house and
> >> don't have access to it, sorry.
> >> So, please try this and let's see what happens.
> >
> > No problem, thanks for the patch.
> >
> > Unfortunately always locks up on kernel boot:
> >
> >    ...
> >    mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> >    mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
> >    mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> >    mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
> >    mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> >    mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
> >    mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
> >    mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> >    mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
> >
> > That was original linux-5.1 patched with your attached patch.
> >
> > I'll try and dig down into that further today and get some
> > feedback on where it is failing.
>
> The first problem I see is that the GPIO MODE register bits for
> PERST_MODE are set to 00, so in "PCIe Reset" mode. If I hack in
> a register update for that with:
>
>      /* Force PERST PCIe reset into GPIO mode */
>      *(unsigned int *)(0xbe000060) |=  BIT(10);

I have set GPIO mode for this in the new attached patch.

>
> I do that at the start of mt7621_pcie_init_ports(). With that in
> place I get further:
>
>    mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>    mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
>    mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>    mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
>    mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
>    mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
>    mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
>    mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
>    mt7621-pci 1e140000.pcie: PCIE0 enabled
>    mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
>    mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
>    pci_bus 0000:00: root bus resource [io  0xffffffff]
>    pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
>    pci_bus 0000:00: root bus resource [bus 00-ff]
>    pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
>
> It hangs there...

I had review the boot order is working for you in version 4.20 and the
order with the new patch applied. There were
only one difference, the place where interrupt bits are set. I have
changed that also in the new attached patch.

For me, the order now and how the different boot steps are being done
in v4.20 are the same.

One other thing I don't really understand why is needed but is in the
v4.20 code are this two lines:

pcie_write(pcie, 0xffffffff, RALINK_PCI_MEMBASE);
pcie_write(pcie, RALINK_PCI_IO_MAP_BASE, RALINK_PCI_IOBASE);

These are added also in the current patch.

>
> Regards
> Greg

Hope this helps.

Best regards,
    Sergio Paracuellos
>
>

--000000000000247f3e058a2e485c
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-staging-mt7621-pci-use-perst-gpio-instead-of-builtin.patch"
Content-Disposition: attachment; 
	filename="0001-staging-mt7621-pci-use-perst-gpio-instead-of-builtin.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_jwc2mj7c0>
X-Attachment-Id: f_jwc2mj7c0

RnJvbSBiZTZlODk0ZTQ1OTJhYzBhZDdlZGNhNTkwZWJmZjhmNWU4MGE5NzMzIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBTZXJnaW8gUGFyYWN1ZWxsb3MgPHNlcmdpby5wYXJhY3VlbGxv
c0BnbWFpbC5jb20+CkRhdGU6IFdlZCwgMjkgTWF5IDIwMTkgMDk6NTg6MDcgKzAyMDAKU3ViamVj
dDogW1BBVENIXSBzdGFnaW5nOiBtdDc2MjEtcGNpOiB1c2UgcGVyc3QgZ3BpbyBpbnN0ZWFkIG9m
IGJ1aWx0aW4gcGVyc3QKClNvbWUgYm9hcmRzIG5lZWQgZ3BpbyBpbnN0ZWFkIG9mIGJ1aWx0aW4g
cGVyc3QuIFVzZSBncGlvIGZvciBhbGwKb2YgdGhlbSB3aGljaCB3YXMgdGhlIGFwcHJvYWNoIG9m
IHRoZSBvcmlnaW5hbCBjb2RlLgoKU2lnbmVkLW9mZi1ieTogU2VyZ2lvIFBhcmFjdWVsbG9zIDxz
ZXJnaW8ucGFyYWN1ZWxsb3NAZ21haWwuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9tdDc2MjEt
ZHRzL210NzYyMS5kdHNpICB8ICAgMyArLQogZHJpdmVycy9zdGFnaW5nL210NzYyMS1wY2kvcGNp
LW10NzYyMS5jIHwgMTEzICsrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tCiAyIGZpbGVz
IGNoYW5nZWQsIDYxIGluc2VydGlvbnMoKyksIDU1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc3RhZ2luZy9tdDc2MjEtZHRzL210NzYyMS5kdHNpIGIvZHJpdmVycy9zdGFnaW5n
L210NzYyMS1kdHMvbXQ3NjIxLmR0c2kKaW5kZXggMjgwZWMzMy4uYWVkMjQ1OCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9zdGFnaW5nL210NzYyMS1kdHMvbXQ3NjIxLmR0c2kKKysrIGIvZHJpdmVycy9z
dGFnaW5nL210NzYyMS1kdHMvbXQ3NjIxLmR0c2kKQEAgLTEsNSArMSw1IEBACiAjaW5jbHVkZSA8
ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvbWlwcy1naWMuaD4KLQorI2luY2x1ZGUg
PGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPgogLyB7CiAJI2FkZHJlc3MtY2VsbHMgPSA8MT47CiAJ
I3NpemUtY2VsbHMgPSA8MT47CkBAIC00NjgsNiArNDY4LDcgQEAKIAkJI2FkZHJlc3MtY2VsbHMg
PSA8Mz47CiAJCSNzaXplLWNlbGxzID0gPDI+OwogCisJCXBlcnN0LWdwaW8gPSA8JmdwaW8gMTkg
R1BJT19BQ1RJVkVfSElHSD47CiAJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CiAJCXBpbmN0
cmwtMCA9IDwmcGNpZV9waW5zPjsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL210NzYy
MS1wY2kvcGNpLW10NzYyMS5jIGIvZHJpdmVycy9zdGFnaW5nL210NzYyMS1wY2kvcGNpLW10NzYy
MS5jCmluZGV4IDAzZDkxOWEuLjI1OTcwZjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9t
dDc2MjEtcGNpL3BjaS1tdDc2MjEuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvbXQ3NjIxLXBjaS9w
Y2ktbXQ3NjIxLmMKQEAgLTE3LDYgKzE3LDcgQEAKIAogI2luY2x1ZGUgPGxpbnV4L2JpdG9wcy5o
PgogI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+CisjaW5jbHVkZSA8bGludXgvZ3Bpby9jb25zdW1l
ci5oPgogI2luY2x1ZGUgPGxpbnV4L2lvcG9sbC5oPgogI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5o
PgogI2luY2x1ZGUgPGxpbnV4L29mLmg+CkBAIC0zNSw2ICszNiw3IEBACiAKIC8qIHN5c2N0bCAq
LwogI2RlZmluZSBNVDc2MjFfQ0hJUF9SRVZfSUQJCTB4MGMKKyNkZWZpbmUgTVQ3NjIxX0dQSU9f
TU9ERSAgICAgICAgMHg2MAogI2RlZmluZSBDSElQX1JFVl9NVDc2MjFfRTIJCTB4MDEwMQogCiAv
KiBNZWRpYVRlayBzcGVjaWZpYyBjb25maWd1cmF0aW9uIHJlZ2lzdGVycyAqLwpAQCAtNzUsMTMg
Kzc3LDEzIEBACiAjZGVmaW5lIFJBTElOS19QQ0lfU1RBVFVTCQkweDAwNTAKIAogLyogU29tZSBk
ZWZpbml0aW9uIHZhbHVlcyAqLworI2RlZmluZSBSQUxJTktfUENJX0lPX01BUF9CQVNFICAweDFl
MTYwMDAwCiAjZGVmaW5lIFBDSUVfUkVWSVNJT05fSUQJCUJJVCgwKQogI2RlZmluZSBQQ0lFX0NM
QVNTX0NPREUJCQkoMHg2MDQwMCA8PCA4KQogI2RlZmluZSBQQ0lFX0JBUl9NQVBfTUFYCQlHRU5N
QVNLKDMwLCAxNikKICNkZWZpbmUgUENJRV9CQVJfRU5BQkxFCQkJQklUKDApCiAjZGVmaW5lIFBD
SUVfUE9SVF9JTlRfRU4oeCkJCUJJVCgyMCArICh4KSkKICNkZWZpbmUgUENJRV9QT1JUX0NMS19F
Tih4KQkJQklUKDI0ICsgKHgpKQotI2RlZmluZSBQQ0lFX1BPUlRfUEVSU1QoeCkJCUJJVCgxICsg
KHgpKQogI2RlZmluZSBQQ0lFX1BPUlRfTElOS1VQCQlCSVQoMCkKIAogI2RlZmluZSBQQ0lFX0NM
S19HRU5fRU4JCQlCSVQoMzEpCkBAIC05MCw2ICs5Miw5IEBACiAjZGVmaW5lIFBDSUVfQ0xLX0dF
TjFfRU4JCShCSVQoMjcpIHwgQklUKDI1KSkKICNkZWZpbmUgTUVNT1JZX0JBU0UJCQkweDAKIAor
I2RlZmluZSBQRVJTVF9NT0RFX0dQSU8gICAgICAgICBCSVQoMTApCisjZGVmaW5lIFBFUlNUX0RF
TEFZX1VTICAgICAgICAgIDEwMDAKKwogLyoqCiAgKiBzdHJ1Y3QgbXQ3NjIxX3BjaWVfcG9ydCAt
IFBDSWUgcG9ydCBpbmZvcm1hdGlvbgogICogQGJhc2U6IEkvTyBtYXBwZWQgcmVnaXN0ZXIgYmFz
ZQpAQCAtMTE5LDYgKzEyNCw3IEBAIHN0cnVjdCBtdDc2MjFfcGNpZV9wb3J0IHsKICAqIEBvZmZz
ZXQ6IElPIC8gTWVtb3J5IG9mZnNldAogICogQGRldjogUG9pbnRlciB0byBQQ0llIGRldmljZQog
ICogQHBvcnRzOiBwb2ludGVyIHRvIFBDSWUgcG9ydCBpbmZvcm1hdGlvbgorICogQHBlcnN0OiBn
cGlvIHJlc2V0CiAgKiBAcnN0OiBwb2ludGVyIHRvIHBjaWUgcmVzZXQKICAqLwogc3RydWN0IG10
NzYyMV9wY2llIHsKQEAgLTEzMiw2ICsxMzgsNyBAQCBzdHJ1Y3QgbXQ3NjIxX3BjaWUgewogCQly
ZXNvdXJjZV9zaXplX3QgaW87CiAJfSBvZmZzZXQ7CiAJc3RydWN0IGxpc3RfaGVhZCBwb3J0czsK
KyAgICBzdHJ1Y3QgZ3Bpb19kZXNjICpwZXJzdDsKIAlzdHJ1Y3QgcmVzZXRfY29udHJvbCAqcnN0
OwogfTsKIApAQCAtMTk4LDYgKzIwNSwxOCBAQCBzdGF0aWMgdm9pZCB3cml0ZV9jb25maWcoc3Ry
dWN0IG10NzYyMV9wY2llICpwY2llLCB1bnNpZ25lZCBpbnQgZGV2LAogCXBjaWVfd3JpdGUocGNp
ZSwgdmFsLCBSQUxJTktfUENJX0NPTkZJR19EQVRBKTsKIH0KIAorc3RhdGljIHZvaWQgbXQ3NjIx
X3BlcnN0X2dwaW9fcGNpZV9hc3NlcnQoc3RydWN0IG10NzYyMV9wY2llICpwY2llKQoreworICAg
IGdwaW9kX3NldF92YWx1ZShwY2llLT5wZXJzdCwgMCk7CisgICAgbWRlbGF5KFBFUlNUX0RFTEFZ
X1VTKTsKK30KKworc3RhdGljIHZvaWQgbXQ3NjIxX3BlcnN0X2dwaW9fcGNpZV9kZWFzc2VydChz
dHJ1Y3QgbXQ3NjIxX3BjaWUgKnBjaWUpCit7CisgICAgZ3Bpb2Rfc2V0X3ZhbHVlKHBjaWUtPnBl
cnN0LCAxKTsKKyAgICBtZGVsYXkoUEVSU1RfREVMQVlfVVMpOworfQorCiBzdGF0aWMgaW5saW5l
IHZvaWQgbXQ3NjIxX2NvbnRyb2xfYXNzZXJ0KHN0cnVjdCBtdDc2MjFfcGNpZV9wb3J0ICpwb3J0
KQogewogCXUzMiBjaGlwX3Jldl9pZCA9IHJ0X3N5c2NfcjMyKE1UNzYyMV9DSElQX1JFVl9JRCk7
CkBAIC0zNDQsNiArMzYzLDEyIEBAIHN0YXRpYyBpbnQgbXQ3NjIxX3BjaWVfcGFyc2VfZHQoc3Ry
dWN0IG10NzYyMV9wY2llICpwY2llKQogCXN0cnVjdCByZXNvdXJjZSByZWdzOwogCWludCBlcnI7
CiAKKyAgICBwY2llLT5wZXJzdCA9IGRldm1fZ3Bpb2RfZ2V0KGRldiwgInBlcnN0IiwgR1BJT0Rf
T1VUX0hJR0gpOworICAgIGlmIChJU19FUlIocGNpZS0+cGVyc3QpKSB7CisgICAgICAgIGRldl9l
cnIoZGV2LCAiZmFpbGVkIHRvIGdldCBncGlvIHBlcnN0XG4iKTsKKyAgICAgICAgcmV0dXJuIFBU
Ul9FUlIocGNpZS0+cGVyc3QpOworICAgIH0KKwogCWVyciA9IG9mX2FkZHJlc3NfdG9fcmVzb3Vy
Y2Uobm9kZSwgMCwgJnJlZ3MpOwogCWlmIChlcnIpIHsKIAkJZGV2X2VycihkZXYsICJtaXNzaW5n
IFwicmVnXCIgcHJvcGVydHlcbiIpOwpAQCAtMzg0LDcgKzQwOSw2IEBAIHN0YXRpYyBpbnQgbXQ3
NjIxX3BjaWVfaW5pdF9wb3J0KHN0cnVjdCBtdDc2MjFfcGNpZV9wb3J0ICpwb3J0KQogCXN0cnVj
dCBtdDc2MjFfcGNpZSAqcGNpZSA9IHBvcnQtPnBjaWU7CiAJc3RydWN0IGRldmljZSAqZGV2ID0g
cGNpZS0+ZGV2OwogCXUzMiBzbG90ID0gcG9ydC0+c2xvdDsKLQl1MzIgdmFsID0gMDsKIAlpbnQg
ZXJyOwogCiAJLyoKQEAgLTM5Myw0NyArNDE3LDMzIEBAIHN0YXRpYyBpbnQgbXQ3NjIxX3BjaWVf
aW5pdF9wb3J0KHN0cnVjdCBtdDc2MjFfcGNpZV9wb3J0ICpwb3J0KQogCSAqLwogCW10NzYyMV9y
ZXNldF9wb3J0KHBvcnQpOwogCi0JdmFsID0gcmVhZF9jb25maWcocGNpZSwgc2xvdCwgUENJRV9G
VFNfTlVNKTsKLQlkZXZfaW5mbyhkZXYsICJQb3J0ICVkIE5fRlRTID0gJXhcbiIsICh1bnNpZ25l
ZCBpbnQpdmFsLCBzbG90KTsKLQogCWVyciA9IHBoeV9pbml0KHBvcnQtPnBoeSk7CiAJaWYgKGVy
cikgewogCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBpbml0aWFsaXplIHBvcnQlZCBwaHlcbiIs
IHNsb3QpOwotCQlnb3RvIGVycl9waHlfaW5pdDsKKwkJcmV0dXJuIGVycjsKIAl9CiAKIAllcnIg
PSBwaHlfcG93ZXJfb24ocG9ydC0+cGh5KTsKIAlpZiAoZXJyKSB7CiAJCWRldl9lcnIoZGV2LCAi
ZmFpbGVkIHRvIHBvd2VyIG9uIHBvcnQlZCBwaHlcbiIsIHNsb3QpOwotCQlnb3RvIGVycl9waHlf
b247Ci0JfQotCi0JaWYgKChwY2llX3BvcnRfcmVhZChwb3J0LCBSQUxJTktfUENJX1NUQVRVUykg
JiBQQ0lFX1BPUlRfTElOS1VQKSA9PSAwKSB7Ci0JCWRldl9lcnIoZGV2LCAicGNpZSVkIG5vIGNh
cmQsIGRpc2FibGUgaXQgKFJTVCAmIENMSylcbiIsIHNsb3QpOwotCQltdDc2MjFfY29udHJvbF9h
c3NlcnQocG9ydCk7Ci0JCXBvcnQtPmVuYWJsZWQgPSBmYWxzZTsKLQkJZXJyID0gLUVOT0RFVjsK
LQkJZ290byBlcnJfbm9fbGlua191cDsKKwkJcmV0dXJuIGVycjsKIAl9CiAKIAlwb3J0LT5lbmFi
bGVkID0gdHJ1ZTsKIAogCXJldHVybiAwOwotCi1lcnJfbm9fbGlua191cDoKLQlwaHlfcG93ZXJf
b2ZmKHBvcnQtPnBoeSk7Ci1lcnJfcGh5X29uOgotCXBoeV9leGl0KHBvcnQtPnBoeSk7Ci1lcnJf
cGh5X2luaXQ6Ci0JcmV0dXJuIGVycjsKIH0KIAogc3RhdGljIHZvaWQgbXQ3NjIxX3BjaWVfaW5p
dF9wb3J0cyhzdHJ1Y3QgbXQ3NjIxX3BjaWUgKnBjaWUpCiB7CiAJc3RydWN0IGRldmljZSAqZGV2
ID0gcGNpZS0+ZGV2OwogCXN0cnVjdCBtdDc2MjFfcGNpZV9wb3J0ICpwb3J0LCAqdG1wOworCXUz
MiB2YWwgPSAwOwogCWludCBlcnI7CiAKKyAgICBydF9zeXNjX3czMihQRVJTVF9NT0RFX0dQSU8s
IE1UNzYyMV9HUElPX01PREUpOworICAgIG10NzYyMV9wZXJzdF9ncGlvX3BjaWVfYXNzZXJ0KHBj
aWUpOworCiAJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKHBvcnQsIHRtcCwgJnBjaWUtPnBvcnRz
LCBsaXN0KSB7CiAJCXUzMiBzbG90ID0gcG9ydC0+c2xvdDsKIApAQCAtNDQxLDcgKzQ1MSwxMCBA
QCBzdGF0aWMgdm9pZCBtdDc2MjFfcGNpZV9pbml0X3BvcnRzKHN0cnVjdCBtdDc2MjFfcGNpZSAq
cGNpZSkKIAkJaWYgKGVycikgewogCQkJZGV2X2VycihkZXYsICJJbml0aWF0aW5nIHBvcnQgJWQg
ZmFpbGVkXG4iLCBzbG90KTsKIAkJCWxpc3RfZGVsKCZwb3J0LT5saXN0KTsKLQkJfQorCQl9IGVs
c2UgeworCSAgICAgICAgdmFsID0gcmVhZF9jb25maWcocGNpZSwgc2xvdCwgUENJRV9GVFNfTlVN
KTsKKwkgICAgICAgIGRldl9pbmZvKGRldiwgIlBvcnQgJWQgTl9GVFMgPSAleFxuIiwgKHVuc2ln
bmVkIGludCl2YWwsIHNsb3QpOworICAgICAgICB9CiAJfQogCiAJcmVzZXRfY29udHJvbF9hc3Nl
cnQocGNpZS0+cnN0KTsKQEAgLTQ1MSwzNyArNDY0LDMyIEBAIHN0YXRpYyB2b2lkIG10NzYyMV9w
Y2llX2luaXRfcG9ydHMoc3RydWN0IG10NzYyMV9wY2llICpwY2llKQogCXJ0X3N5c2NfbTMyKFBD
SUVfQ0xLX0dFTl9ESVMsIFBDSUVfQ0xLX0dFTl9FTiwgUkFMSU5LX1BDSUVfQ0xLX0dFTik7CiAJ
bXNsZWVwKDUwKTsKIAlyZXNldF9jb250cm9sX2RlYXNzZXJ0KHBjaWUtPnJzdCk7CisKKyAgICBt
dDc2MjFfcGVyc3RfZ3Bpb19wY2llX2RlYXNzZXJ0KHBjaWUpOworCisJbGlzdF9mb3JfZWFjaF9l
bnRyeShwb3J0LCAmcGNpZS0+cG9ydHMsIGxpc3QpIHsKKwkJdTMyIHNsb3QgPSBwb3J0LT5zbG90
OworCisJICAgIGlmICgocGNpZV9wb3J0X3JlYWQocG9ydCwgUkFMSU5LX1BDSV9TVEFUVVMpICYg
UENJRV9QT1JUX0xJTktVUCkgPT0gMCkgeworCQkgICAgZGV2X2VycihkZXYsICJwY2llJWQgbm8g
Y2FyZCwgZGlzYWJsZSBpdCAoUlNUICYgQ0xLKVxuIiwgc2xvdCk7CisJCSAgICBtdDc2MjFfY29u
dHJvbF9hc3NlcnQocG9ydCk7CisgICAgICAgICAgICBwaHlfcG93ZXJfb2ZmKHBvcnQtPnBoeSk7
CisJCSAgICBwb3J0LT5lbmFibGVkID0gZmFsc2U7CisgICAgICAgIH0gZWxzZSB7CisJICAgICAg
ICAvKiBlbmFibGUgcGNpZSBpbnRlcnJ1cHQgKi8KKwkgICAgICAgIHZhbCA9IHBjaWVfcmVhZChw
Y2llLCBSQUxJTktfUENJX1BDSU1TS19BRERSKTsKKwkgICAgICAgIHZhbCB8PSBQQ0lFX1BPUlRf
SU5UX0VOKHNsb3QpOworCSAgICAgICAgcGNpZV93cml0ZShwY2llLCB2YWwsIFJBTElOS19QQ0lf
UENJTVNLX0FERFIpOworICAgICAgICB9CisJfQogfQogCi1zdGF0aWMgaW50IG10NzYyMV9wY2ll
X2VuYWJsZV9wb3J0KHN0cnVjdCBtdDc2MjFfcGNpZV9wb3J0ICpwb3J0KQorc3RhdGljIHZvaWQg
bXQ3NjIxX3BjaWVfZW5hYmxlX3BvcnQoc3RydWN0IG10NzYyMV9wY2llX3BvcnQgKnBvcnQpCiB7
CiAJc3RydWN0IG10NzYyMV9wY2llICpwY2llID0gcG9ydC0+cGNpZTsKIAl1MzIgc2xvdCA9IHBv
cnQtPnNsb3Q7CiAJdTMyIG9mZnNldCA9IE1UNzYyMV9QQ0lFX09GRlNFVCArIChzbG90ICogTVQ3
NjIxX05FWFRfUE9SVCk7CiAJdTMyIHZhbDsKLQlpbnQgZXJyOwotCi0JLyogYXNzZXJ0IHBvcnQg
UEVSU1RfTiAqLwotCXZhbCA9IHBjaWVfcmVhZChwY2llLCBSQUxJTktfUENJX1BDSUNGR19BRERS
KTsKLQl2YWwgfD0gUENJRV9QT1JUX1BFUlNUKHNsb3QpOwotCXBjaWVfd3JpdGUocGNpZSwgdmFs
LCBSQUxJTktfUENJX1BDSUNGR19BRERSKTsKLQotCS8qIGRlLWFzc2VydCBwb3J0IFBFUlNUX04g
Ki8KLQl2YWwgPSBwY2llX3JlYWQocGNpZSwgUkFMSU5LX1BDSV9QQ0lDRkdfQUREUik7Ci0JdmFs
ICY9IH5QQ0lFX1BPUlRfUEVSU1Qoc2xvdCk7Ci0JcGNpZV93cml0ZShwY2llLCB2YWwsIFJBTElO
S19QQ0lfUENJQ0ZHX0FERFIpOwotCi0JLyogMTAwbXMgdGltZW91dCB2YWx1ZSBzaG91bGQgYmUg
ZW5vdWdoIGZvciBHZW4xIHRyYWluaW5nICovCi0JZXJyID0gcmVhZGxfcG9sbF90aW1lb3V0KHBv
cnQtPmJhc2UgKyBSQUxJTktfUENJX1NUQVRVUywKLQkJCQkgdmFsLCAhISh2YWwgJiBQQ0lFX1BP
UlRfTElOS1VQKSwKLQkJCQkgMjAsIDEwMCAqIFVTRUNfUEVSX01TRUMpOwotCWlmIChlcnIpCi0J
CXJldHVybiAtRVRJTUVET1VUOwotCi0JLyogZW5hYmxlIHBjaWUgaW50ZXJydXB0ICovCi0JdmFs
ID0gcGNpZV9yZWFkKHBjaWUsIFJBTElOS19QQ0lfUENJTVNLX0FERFIpOwotCXZhbCB8PSBQQ0lF
X1BPUlRfSU5UX0VOKHNsb3QpOwotCXBjaWVfd3JpdGUocGNpZSwgdmFsLCBSQUxJTktfUENJX1BD
SU1TS19BRERSKTsKIAogCS8qIG1hcCAyRyBERFIgcmVnaW9uICovCiAJcGNpZV93cml0ZShwY2ll
LCBQQ0lFX0JBUl9NQVBfTUFYIHwgUENJRV9CQVJfRU5BQkxFLApAQCAtNDkyLDggKzUwMCw2IEBA
IHN0YXRpYyBpbnQgbXQ3NjIxX3BjaWVfZW5hYmxlX3BvcnQoc3RydWN0IG10NzYyMV9wY2llX3Bv
cnQgKnBvcnQpCiAJLyogY29uZmlndXJlIGNsYXNzIGNvZGUgYW5kIHJldmlzaW9uIElEICovCiAJ
cGNpZV93cml0ZShwY2llLCBQQ0lFX0NMQVNTX0NPREUgfCBQQ0lFX1JFVklTSU9OX0lELAogCQkg
ICBvZmZzZXQgKyBSQUxJTktfUENJX0NMQVNTKTsKLQotCXJldHVybiAwOwogfQogCiBzdGF0aWMg
dm9pZCBtdDc2MjFfcGNpZV9lbmFibGVfcG9ydHMoc3RydWN0IG10NzYyMV9wY2llICpwY2llKQpA
QCAtNTA2LDExICs1MTIsNyBAQCBzdGF0aWMgdm9pZCBtdDc2MjFfcGNpZV9lbmFibGVfcG9ydHMo
c3RydWN0IG10NzYyMV9wY2llICpwY2llKQogCiAJbGlzdF9mb3JfZWFjaF9lbnRyeShwb3J0LCAm
cGNpZS0+cG9ydHMsIGxpc3QpIHsKIAkJaWYgKHBvcnQtPmVuYWJsZWQpIHsKLQkJCWlmIChtdDc2
MjFfcGNpZV9lbmFibGVfcG9ydChwb3J0KSkgewotCQkJCWRldl9lcnIoZGV2LCAiZGUtYXNzZXJ0
IHBvcnQgJWQgUEVSU1RfTlxuIiwKLQkJCQkJcG9ydC0+c2xvdCk7Ci0JCQkJY29udGludWU7Ci0J
CQl9CisJCQltdDc2MjFfcGNpZV9lbmFibGVfcG9ydChwb3J0KTsKIAkJCWRldl9pbmZvKGRldiwg
IlBDSUUlZCBlbmFibGVkXG4iLCBzbG90KTsKIAkJCW51bV9zbG90c19lbmFibGVkKys7CiAJCX0K
QEAgLTY2NSw2ICs2NjcsOSBAQCBzdGF0aWMgaW50IG10NzYyMV9wY2lfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKIAkJcmV0dXJuIDA7CiAJfQogCisgICAgcGNpZV93cml0ZShw
Y2llLCAweGZmZmZmZmZmLCBSQUxJTktfUENJX01FTUJBU0UpOworICAgIHBjaWVfd3JpdGUocGNp
ZSwgUkFMSU5LX1BDSV9JT19NQVBfQkFTRSwgUkFMSU5LX1BDSV9JT0JBU0UpOworCiAJbXQ3NjIx
X3BjaWVfZW5hYmxlX3BvcnRzKHBjaWUpOwogCiAJZXJyID0gbXQ3NjIxX3BjaV9wYXJzZV9yZXF1
ZXN0X29mX3BjaV9yYW5nZXMocGNpZSk7Ci0tIAoyLjcuNAoK
--000000000000247f3e058a2e485c
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--000000000000247f3e058a2e485c--
