Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE6D1D636A
	for <lists+driverdev-devel@lfdr.de>; Sat, 16 May 2020 20:04:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A80CF8723E;
	Sat, 16 May 2020 18:04:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Bt81-jbU7uj; Sat, 16 May 2020 18:04:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 435AE86F6A;
	Sat, 16 May 2020 18:04:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6C6A01BF5AC
 for <devel@linuxdriverproject.org>; Sat, 16 May 2020 18:04:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 467EB20404
 for <devel@linuxdriverproject.org>; Sat, 16 May 2020 18:04:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j6xp7XAFlaG6 for <devel@linuxdriverproject.org>;
 Sat, 16 May 2020 18:04:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 255DF203C2
 for <devel@driverdev.osuosl.org>; Sat, 16 May 2020 18:04:01 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id d16so4887164edq.7
 for <devel@driverdev.osuosl.org>; Sat, 16 May 2020 11:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZRmBzgaQzO0FI7kpt2DHRV7sye7vtapRD4uHVMFzSQA=;
 b=iyXst3Tg0ZkZzl5eeraYGP6hYMjMrNLReQ3q0JoxcZuVb7qq6TEZOxZaiiLfxX0WUQ
 Z7JC3o83hpGG24c3C8bvu3M8gIQhP0ZKIp00BQpRdjbpD5lXvr2LU9W87A07ca9lEkjL
 Ec/qUjpI4wifR1ofTKX8gxeUhK2LoEs3YLmR2R+pJApW3S/+Ha7NcYf/UNxyahzNOvJW
 aP0QArO6a2CsVHMkFu3pV7Rbe/v79jRkTS5Q8WDJI8aqDaHeApYyb7Cfhb/+wmEBvQn/
 BaGHt005ooqyKNJW6OtLC6C/fWdXdDnaknqkAQC2FNUC0iT1V9WkS3ne2A+RiTdL0zGV
 dFiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZRmBzgaQzO0FI7kpt2DHRV7sye7vtapRD4uHVMFzSQA=;
 b=WuOauzS+V8OkU50ldrTSmlaFBoPDhSWHEbX2du319opCaMMToYaD5I9EmTFxpSQb/B
 sxmB+jEypuTyacAtcwaZgigQi44vPgSEmahaxkrc5aUq/+LE/RX0/muXcAr9awNm/bKz
 HbjH9ppkFw+KciuTGhGKbzVQPTxbtrjX+4MGQFZs39uYsHDT470vqF4WDYYLiDAgSYCC
 htHHdGLBVHBPlicKkVsoXFuRrBj/RQw9KrsTHrIs0LUmTMbtOHAes6aV04DpdJuhhS7U
 yD4YGMQhk/0yt6Dtdk1un3uSgyDTx4zv0YQuDUArllplvNatrN/x67bKa+aPc8BUp//L
 Zryg==
X-Gm-Message-State: AOAM531huJA8M9G04VluWY2mA9TU+xh6cyD+7muNxgzGZQJF4KsY1V69
 xhCP99hD6QLv4O0BAswl83kUDnCIZTdQPd+/7AE=
X-Google-Smtp-Source: ABdhPJyuKQj/k36gP0MPe3k4moMsG9Dk4ECCqJLgj/kTI9d2iANv6/VFO6fWIHo1cfkMg7Iy93Q8k0fbOiU9SXUUvgg=
X-Received: by 2002:aa7:d850:: with SMTP id f16mr7121658eds.365.1589652239045; 
 Sat, 16 May 2020 11:03:59 -0700 (PDT)
MIME-Version: 1.0
References: <bcefba5b-107c-716b-bb60-5b4b2476894b@o2online.de>
In-Reply-To: <bcefba5b-107c-716b-bb60-5b4b2476894b@o2online.de>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 16 May 2020 20:03:48 +0200
Message-ID: <CAFBinCD8-tr97GCVhBi5R1nzxLhy=_6VuLY8ubUO1SDTFjiELw@mail.gmail.com>
Subject: Re: RTL8723BS driver doesn't work for,me but I can help testing
To: Tobias Baumann <017623705678@o2online.de>
Content-Type: multipart/mixed; boundary="00000000000006bce605a5c7c1e7"
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--00000000000006bce605a5c7c1e7
Content-Type: text/plain; charset="UTF-8"

Hi Tobias,

On Thu, May 7, 2020 at 10:57 AM Tobias Baumann <017623705678@o2online.de> wrote:
>
> Hello Community
>
> I was referred to you by Martin. I have an older Android TV box that
> runs for over 3 years with Armbian Linux (Debian Jessie Headless Kernel
> 3.10.99). I'm looking forward to the new kernels and I'm glad that older
> hardware is still supported.
> Together with Oleg(balbes150) and Martin(xdarklight) I am testing the
> new kernel 5.x for ARM ( Amlogic S812 / Meson8m2 ) . Martin has written
> a patch for the SDIO controller in the last days so that also Wifi
> module and MMC are recognized. I could now successfully load the driver
> module RTLWIFI from the kernel. But unfortunately the card is only
> listed on the desktop as "not ready" or in the terminal (iwlist) as "no
> scan result". In the dmesg/lsmod RTLWIFI->RTL8723bs is loaded and the
> module is loaded with version v4.3.5.5_12290.20140916_BTCOEX20140507-4E40 .
>
>
> I would like to ask you to check the driver because even in kernel
> 3.10.99 a newer version (v4.3.16_13854.20150410_BTCOEX20150119-5844) is
> loaded and also at github are hard kernels ( version 2017 Kernel 4.9>)
> and ap17 and thirdyouth (v5.2.17.1_26955.20180307_COEX20180201-6f52).
> More recent ones can also be found - these have already been
> successfully tested with Debian 10. i hope that this may solve the
> problem with my Linux box.
>
> I would appreciate feedback on this request or information about
> debugging . My Linux box is also available for testing purposes
I just tried this on one of my Meson8b boards to see if it's some
problem with the MMC controller driver (meson-mx-sdio).
Here are my steps:
- (boot the board)
- ip link set up dev wlan0
- (wait until that finishes, it takes a while because it seems to load
the wifi firmware)
- iw dev wlan0 scan
- (wait a few seconds, then it shows many 2.4GHz wifi networks)
- wpa_passphrase MY_24GHz_WIFI_SSID > /tmp/wpa_supplicant_conf
- (enter the passphrase and press CTRL-D)
- wpa_supplicant -iwlan0 -c/tmp/wpa_supplicant.conf -Dnl80211 &
- (wait a couple more seconds for it to connect)
- dhcpcd wlan0
- then I ran iperf3, see the attached result
- then I ran dmesg | grep -Ei "(rtl8723bs|wlan0)", see the attached result

with these commands wifi is working "fine" for me.
my definition of fine: it connects to my AP and traffic can flow.
transfer speeds are on the low side (with 15Mbit/s and 5Mbit/s) but I
have no reference (for example from a vendor kernel) so I can't say if
that's to be expected.

I am not sure about any "desktop" tools and their behavior because I
don't use these.
can you please try the steps above and attach the output of the
"failing" commands (together with the dmesg output)?


Best regards,
Martin

--00000000000006bce605a5c7c1e7
Content-Type: text/plain; charset="US-ASCII"; name="iperf3.txt"
Content-Disposition: attachment; filename="iperf3.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_ka9xnkgh0>
X-Attachment-Id: f_ka9xnkgh0

IyBpcGVyZjMgLWMgMTkyLjE2OC4xLjEwMApDb25uZWN0aW5nIHRvIGhvc3QgMTkyLjE2OC4xLjEw
MCwgcG9ydCA1MjAxClsgIDVdIGxvY2FsIDE5Mi4xNjguMS4xNzUgcG9ydCA1MDA4MiBjb25uZWN0
ZWQgdG8gMTkyLjE2OC4xLjEwMCBwb3J0IDUyMDEKWyBJRF0gSW50ZXJ2YWwgICAgICAgICAgIFRy
YW5zZmVyICAgICBCaXRyYXRlICAgICAgICAgUmV0ciAgQ3duZApbICA1XSAgIDAuMDAtMS4wMCAg
IHNlYyAgIDkyMiBLQnl0ZXMgIDcuNTUgTWJpdHMvc2VjICAgIDAgICAgMTA1IEtCeXRlcyAgICAg
ICAKWyAgNV0gICAxLjAwLTIuMDEgICBzZWMgIDEuMTIgTUJ5dGVzICA5LjMyIE1iaXRzL3NlYyAg
ICAwICAgIDE1MyBLQnl0ZXMgICAgICAgClsgIDVdICAgMi4wMS0zLjAwICAgc2VjICAxLjE4IE1C
eXRlcyAgOS45NSBNYml0cy9zZWMgICAgMCAgICAyMDYgS0J5dGVzICAgICAgIApbICA1XSAgIDMu
MDAtNC4xOCAgIHNlYyAgMS40MyBNQnl0ZXMgIDEwLjIgTWJpdHMvc2VjICAgIDAgICAgMjcwIEtC
eXRlcyAgICAgICAKWyAgNV0gICA0LjE4LTUuMDAgICBzZWMgIDEuNjggTUJ5dGVzICAxNy4xIE1i
aXRzL3NlYyAgICAwICAgIDM0MiBLQnl0ZXMgICAgICAgClsgIDVdICAgNS4wMC02LjEwICAgc2Vj
ICAxLjkzIE1CeXRlcyAgMTQuNiBNYml0cy9zZWMgICAgMCAgICA0MjYgS0J5dGVzICAgICAgIApb
ICA1XSAgIDYuMTAtNy4wMCAgIHNlYyAgMS44NiBNQnl0ZXMgIDE3LjQgTWJpdHMvc2VjICAgIDAg
ICAgNDMzIEtCeXRlcyAgICAgICAKWyAgNV0gICA3LjAwLTguMDAgICBzZWMgIDIuNzMgTUJ5dGVz
ICAyMi45IE1iaXRzL3NlYyAgICAwICAgIDQzMyBLQnl0ZXMgICAgICAgClsgIDVdICAgOC4wMC05
LjAwICAgc2VjICAyLjgwIE1CeXRlcyAgMjMuNSBNYml0cy9zZWMgICAgMCAgICA0MzMgS0J5dGVz
ICAgICAgIApbICA1XSAgIDkuMDAtMTAuMDAgIHNlYyAgMi44MCBNQnl0ZXMgIDIzLjUgTWJpdHMv
c2VjICAgIDAgICAgNDMzIEtCeXRlcyAgICAgICAKLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAt
IC0gLSAtIC0gLSAtIC0gLSAtIC0gLQpbIElEXSBJbnRlcnZhbCAgICAgICAgICAgVHJhbnNmZXIg
ICAgIEJpdHJhdGUgICAgICAgICBSZXRyClsgIDVdICAgMC4wMC0xMC4wMCAgc2VjICAxOC40IE1C
eXRlcyAgMTUuNSBNYml0cy9zZWMgICAgMCAgICAgICAgICAgICBzZW5kZXIKWyAgNV0gICAwLjAw
LTEwLjIyICBzZWMgIDE3LjUgTUJ5dGVzICAxNC40IE1iaXRzL3NlYyAgICAgICAgICAgICAgICAg
IHJlY2VpdmVyCgppcGVyZiBEb25lLgojIGlwZXJmMyAtYyAxOTIuMTY4LjEuMTAwIC1SCkNvbm5l
Y3RpbmcgdG8gaG9zdCAxOTIuMTY4LjEuMTAwLCBwb3J0IDUyMDEKUmV2ZXJzZSBtb2RlLCByZW1v
dGUgaG9zdCAxOTIuMTY4LjEuMTAwIGlzIHNlbmRpbmcKWyAgNV0gbG9jYWwgMTkyLjE2OC4xLjE3
NSBwb3J0IDUwMDg2IGNvbm5lY3RlZCB0byAxOTIuMTY4LjEuMTAwIHBvcnQgNTIwMQpbIElEXSBJ
bnRlcnZhbCAgICAgICAgICAgVHJhbnNmZXIgICAgIEJpdHJhdGUKWyAgNV0gICAwLjAwLTEuMDAg
ICBzZWMgICA1ODQgS0J5dGVzICA0Ljc2IE1iaXRzL3NlYyAgICAgICAgICAgICAgICAgIApbICA1
XSAgIDEuMDAtMi4wNCAgIHNlYyAgIDUwOSBLQnl0ZXMgIDQuMDIgTWJpdHMvc2VjICAgICAgICAg
ICAgICAgICAgClsgIDVdICAgMi4wNC0zLjAwICAgc2VjICAgNTQ5IEtCeXRlcyAgNC42OCBNYml0
cy9zZWMgICAgICAgICAgICAgICAgICAKWyAgNV0gICAzLjAwLTQuMDAgICBzZWMgICA5NjIgS0J5
dGVzICA3Ljg4IE1iaXRzL3NlYyAgICAgICAgICAgICAgICAgIApbICA1XSAgIDQuMDAtNS4wMCAg
IHNlYyAgIDc0OSBLQnl0ZXMgIDYuMTUgTWJpdHMvc2VjICAgICAgICAgICAgICAgICAgClsgIDVd
ICAgNS4wMC02LjAwICAgc2VjICAxLjI5IE1CeXRlcyAgMTAuOCBNYml0cy9zZWMgICAgICAgICAg
ICAgICAgICAKWyAgNV0gICA2LjAwLTcuMDAgICBzZWMgICA0MjcgS0J5dGVzICAzLjUxIE1iaXRz
L3NlYyAgICAgICAgICAgICAgICAgIApbICA1XSAgIDcuMDAtOC4wMSAgIHNlYyAgIDQ1MSBLQnl0
ZXMgIDMuNjUgTWJpdHMvc2VjICAgICAgICAgICAgICAgICAgClsgIDVdICAgOC4wMS05LjAwICAg
c2VjICAgNjAxIEtCeXRlcyAgNS4wMCBNYml0cy9zZWMgICAgICAgICAgICAgICAgICAKWyAgNV0g
ICA5LjAwLTEwLjAwICBzZWMgICA2MzggS0J5dGVzICA1LjIwIE1iaXRzL3NlYyAgICAgICAgICAg
ICAgICAgIAotIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAt
ClsgSURdIEludGVydmFsICAgICAgICAgICBUcmFuc2ZlciAgICAgQml0cmF0ZSAgICAgICAgIFJl
dHIKWyAgNV0gICAwLjAwLTEwLjI3ICBzZWMgIDYuOTAgTUJ5dGVzICA1LjY0IE1iaXRzL3NlYyAg
ICA4ICAgICAgICAgICAgIHNlbmRlcgpbICA1XSAgIDAuMDAtMTAuMDAgIHNlYyAgNi42MyBNQnl0
ZXMgIDUuNTYgTWJpdHMvc2VjICAgICAgICAgICAgICAgICAgcmVjZWl2ZXIKCmlwZXJmIERvbmUu
CiMK
--00000000000006bce605a5c7c1e7
Content-Type: text/plain; charset="US-ASCII"; name="dmesg.txt"
Content-Disposition: attachment; filename="dmesg.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_ka9xql2b1>
X-Attachment-Id: f_ka9xql2b1

WyAgICAyLjQ0MTQ4OF0gUlRMODcyM0JTOiBtb2R1bGUgaW5pdCBzdGFydApbICAgIDIuNDQyMTg1
XSBSVEw4NzIzQlM6IHJ0bDg3MjNicyB2NC4zLjUuNV8xMjI5MC4yMDE0MDkxNl9CVENPRVgyMDE0
MDUwNy00RTQwClsgICAgMi40NTExNjNdIFJUTDg3MjNCUzogcnRsODcyM2JzIEJULUNvZXggdmVy
c2lvbiA9IEJUQ09FWDIwMTQwNTA3LTRFNDAKWyAgICAyLjQ1NTgwMl0gUlRMODcyM0JTOiBtb2R1
bGUgaW5pdCByZXQgPTAKWyAgIDE2LjQ3ODgzMF0gUlRMODcyM0JTOiBydHdfbmRldl9pbml0KHds
YW4wKQpbICAgMzcuMjA5ODU3XSBydGw4NzIzYnM6IGFjcXVpcmUgRlcgZnJvbSBmaWxlOnJ0bHdp
ZmkvcnRsODcyM2JzX25pYy5iaW4KWyAgMzM3LjgwNzY2NF0gUlRMODcyM0JTOiBydHdfc2V0Xzgw
Ml8xMV9jb25uZWN0KHdsYW4wKSAgZndfc3RhdGUgPSAweDAwMDAwMDA4ClsgIDMzOC4zNDYxOTBd
IFJUTDg3MjNCUzogc3RhcnQgYXV0aApbICAzMzguMzc3MTQ2XSBSVEw4NzIzQlM6IGF1dGggc3Vj
Y2Vzcywgc3RhcnQgYXNzb2MKWyAgMzM4LjM4OTI0MV0gUlRMODcyM0JTOiBydHdfY2ZnODAyMTFf
aW5kaWNhdGVfY29ubmVjdCh3bGFuMCkgQlNTIG5vdCBmb3VuZCAhIQpbICAzMzguMzk1NTU1XSBS
VEw4NzIzQlM6IGFzc29jIHN1Y2Nlc3MKWyAgMzM4LjczMzY3MV0gUlRMODcyM0JTOiBzZW5kIGVh
cG9sIHBhY2tldApbICAzMzguNzU0MTE0XSBSVEw4NzIzQlM6IHNlbmQgZWFwb2wgcGFja2V0Clsg
IDMzOC43NTg2MTFdIFJUTDg3MjNCUzogc2V0IHBhaXJ3aXNlIGtleSBjYW1pZDo0LCBhZGRyOmRl
OmFkOmJlOmVlOmZmOjAwLCBraWQ6MCwgdHlwZTpBRVMKWyAgMzM4Ljc2ODg5N10gUlRMODcyM0JT
OiBzZXQgZ3JvdXAga2V5IGNhbWlkOjUsIGFkZHI6ZGU6YWQ6YmU6ZWU6ZmY6MDAsIGtpZDoxLCB0
eXBlOkFFUwpbICAzMzkuMTAzNzY0XSBJUHY2OiBBRERSQ09ORihORVRERVZfQ0hBTkdFKTogd2xh
bjA6IGxpbmsgYmVjb21lcyByZWFkeQo=
--00000000000006bce605a5c7c1e7
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--00000000000006bce605a5c7c1e7--
