Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DF37C252C3
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 16:52:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AB27B86B33;
	Tue, 21 May 2019 14:52:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2eAB4J7UYcaK; Tue, 21 May 2019 14:52:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 60B8B86ACE;
	Tue, 21 May 2019 14:52:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D69491BF4E2
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:52:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D3D7186ACE
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:52:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Br6Kx+S0iMQq for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 14:52:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
 [209.85.166.52])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4F152869D3
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 14:52:19 +0000 (UTC)
Received: by mail-io1-f52.google.com with SMTP id v7so14114256iob.10
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 07:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VEBQT5hPNY+WmxZoXIy8e/pcweb5kfeZeD0sBTptdRA=;
 b=rMcvSaT2NO+jmP8g6QeQrSTTPSv/OllfHnw4LphrinwMsbbuwCDWJdphYEBhZvg2X5
 7rRoVkFnX9ZhbtxvhW+DiPHkO7Dv1a5hLPI5KOK2msqNVGlJL3ZQ2m6hcgvu/nc2ksK0
 +mv3obz7DDPx+LQxEqQB9uIQTu4iLnp26+osEXmGI8Pos2TdAxbLGdiGCf6RsbAiJbZ8
 /yQRrcifSQ0F0WRNxOwb0rYDY1RJNtPAaIgh1YsskS6ZjoYG62pQjWBDgs01Qwkx9Z12
 qcqa6RO8hDt1BUrfcRyqXImJ8U+RpPJapFxQqszg/GCqAhEwe7ZawBaQ9LvVd4w7RaLG
 pRXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VEBQT5hPNY+WmxZoXIy8e/pcweb5kfeZeD0sBTptdRA=;
 b=dtHI/blPUCb7H5nhAyws6C+H873AgVidByrYgLbPFoJq8xTYhiFYzYL02kuT2CvwQe
 On3POZljADUAmg9K4XbmfTCJtSqiCF3V0UTOD1y4xNj5DuxmBOt3M6i0RmO+ZJykFED9
 pKXl3/usKNULRYTebmAeiSZkzzCFsc1TXxu9DkhXwhjVRdha3HlT36TZ0fZpY7npjPmD
 90mIVmOP5y+bylkQF+DCIGoLhp5tc/+HZc8aKClPWM/KvKfpIxLu8PAUduBeEzYaztOY
 Cqx1p5CpWIxHZpesa6AYWCp8aXgH1Ev2vTffiG5NAdfzTMzTBzBwidrHuaKDKufv6daE
 oorg==
X-Gm-Message-State: APjAAAVHOowBpa1emayOrU+Hmn4qv8qMmCTQGDvsak9B7bzIus/abXN2
 4DMOTTWaTmV1btj6Vebb8lxdZaRlSwDDd0jnW9hTDg==
X-Google-Smtp-Source: APXvYqw1FQrNhSL/UOS0iNSoSsah/qfUsbU8ohoRfTN+LWooDGMyeqRDC7CCfWjpG2/i4o6DwpRDUFhZGUzRDYT3P3A=
X-Received: by 2002:a6b:790a:: with SMTP id i10mr4425841iop.2.1558450338532;
 Tue, 21 May 2019 07:52:18 -0700 (PDT)
MIME-Version: 1.0
References: <1558115396-3244-1-git-send-email-oscargomezf@gmail.com>
 <CAGngYiVNQrr2nKfGCdi8FzS5UnmGaDj_Gu_F0ZeOTMKX6_1Zuw@mail.gmail.com>
 <20190521141715.GA25603@kroah.com>
 <CAGngYiUxd15xVkcbFm4cC+0a+UU+VODTKC0z4p=NoW+pTXoYzA@mail.gmail.com>
In-Reply-To: <CAGngYiUxd15xVkcbFm4cC+0a+UU+VODTKC0z4p=NoW+pTXoYzA@mail.gmail.com>
From: Oscar Gomez Fuente <oscargomezf@gmail.com>
Date: Tue, 21 May 2019 16:51:43 +0200
Message-ID: <CALtfCQaiT0p_cWgKS66ExS0_Uqe2Ltv7v-dV7sLarBgZNUGzHQ@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: solve warning incorrect type dev_core.c
To: Sven Van Asbroeck <thesven73@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Ok, perfect!

Oscar Gomez Fuente
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
