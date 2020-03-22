Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6F018E766
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Mar 2020 08:54:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8869A204D6;
	Sun, 22 Mar 2020 07:54:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N6nEyt1hi9Rp; Sun, 22 Mar 2020 07:54:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E977520034;
	Sun, 22 Mar 2020 07:53:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B39E01BF3BC
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 07:53:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9BE4420034
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 07:53:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 00aYo6225YFQ for <devel@linuxdriverproject.org>;
 Sun, 22 Mar 2020 07:53:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com
 [209.85.217.43])
 by silver.osuosl.org (Postfix) with ESMTPS id F28FC2002B
 for <devel@driverdev.osuosl.org>; Sun, 22 Mar 2020 07:53:55 +0000 (UTC)
Received: by mail-vs1-f43.google.com with SMTP id e138so6694555vsc.11
 for <devel@driverdev.osuosl.org>; Sun, 22 Mar 2020 00:53:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NGOXhbNE/Yvzyog9sFZHGWWLHVko+x/bs3AqHRI4q8Q=;
 b=m96WaUkt7JedMDG4ISXzSttGGPakucXaGSVr/CYifkOtp1fXoh6INQyccXIcIHwWkN
 kwHQcCsQV7Q+TSHtHrK9ld/SyfRZdtQr2Qvt2j/UaZaGXv7K4RQVCBIgDPD5ezAbmyAL
 Udey756fd1cdVbIMrkT1TXC9TGTUfAUw/vd9wbBgnbb5MGMYpLuChPZecSi3XaxgXPaJ
 bwt7GDbEo/DCfm5GoDyEIu6S9SaXgR9Uj3M1mI9VymysO2XUPC/cVRblxr50e5NAnCHx
 jWTUaXxpGIQdTvWM00hvprFzLv19IlFZNmTcAHhFfui3ZXW+K0fWS8QxgwBZ2sZdpHSf
 HnuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NGOXhbNE/Yvzyog9sFZHGWWLHVko+x/bs3AqHRI4q8Q=;
 b=OE87DBY6cc75JJW10A2G9UhoBAVIVO97/NJi6nlDgG91WvcPRn+T8aKccpMqnLcSsZ
 sUQlq4mcBcPbovRELdCsqQhXx/585t6wU2GDgz5h+sU4lB1NPAVrMpXnseC7dY0G6AGw
 B/Ryxk4KWsDJ1EcLNeusCCC0NvCjZBcyfqe0iz+ou3iwoFvBn9jcpJ1xWIbnYFj/Mem2
 LmYr1Y7dgsu2ozLOpDhJNVlLCLqeGIg4Jo8+yxkI0UES8uf+T3e1eH8BMrbRCBBgyr2t
 GGDYNb8WtlaKJBQp1RAf2v5Ssk4sjz31XwxQeBSRnrciTIlZgAcqJeZZT/sur6oV3/62
 rM6Q==
X-Gm-Message-State: ANhLgQ33RmQlY+Fp2n8KAt/PVkv806wNQvJDsmvqYTbKMWNybMH640wJ
 WttBAt2h+1n3IBEoOYTF2sf5BnkNgpg2iEGc8to=
X-Google-Smtp-Source: ADFU+vtEaTWfmqFJuCBiwee7to6ZSYgE6Hq6H5nMKMxws5DkFoNazDU8YjIGQOGlm3hDkX3bRwxL9pdx9gcfqgOYvJQ=
X-Received: by 2002:a67:3201:: with SMTP id y1mr12112175vsy.54.1584863635053; 
 Sun, 22 Mar 2020 00:53:55 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000001a033405a15e3acb@google.com>
In-Reply-To: <0000000000001a033405a15e3acb@google.com>
From: Qiujun Huang <anenbupt@gmail.com>
Date: Sun, 22 Mar 2020 15:53:44 +0800
Message-ID: <CADG63jBdvJMAem7_VF3GbCUSXGRuFrrv6_GqFc=KcKkxcNebCA@mail.gmail.com>
Subject: Re: WARNING in hwahc_probe
To: syzbot <syzbot+df767d588771697b0433@syzkaller.appspotmail.com>
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
Cc: devel@driverdev.osuosl.org, tranmanphong@gmail.com, andreyknvl@google.com,
 linux-usb@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The return value of snprintf is longer than expected if the string is
truncated. Bytes need to be checked here.

diff --git a/drivers/staging/wusbcore/host/hwa-hc.c
b/drivers/staging/wusbcore/host/hwa-hc.c
index 8d959e9..1475a48 100644
--- a/drivers/staging/wusbcore/host/hwa-hc.c
+++ b/drivers/staging/wusbcore/host/hwa-hc.c
@@ -680,10 +680,12 @@ static int hwahc_security_create(struct hwahc *hwahc)
                        break;
                }
                itr += etd->bLength;
-               bytes += snprintf(buf + bytes, sizeof(buf) - bytes,
-                                 "%s (0x%02x) ",
-                                 wusb_et_name(etd->bEncryptionType),
-                                 etd->bEncryptionValue);
+
+               if (sizeof(buf) > bytes)
+                       bytes += snprintf(buf + bytes, sizeof(buf) - bytes,
+                                       "%s (0x%02x) ",
+                                       wusb_et_name(etd->bEncryptionType),
+                                       etd->bEncryptionValue);
                wusbhc->ccm1_etd = etd;
        }
        dev_info(dev, "supported encryption types: %s\n", buf);
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
