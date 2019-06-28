Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD2C5A585
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 21:58:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7324488275;
	Fri, 28 Jun 2019 19:58:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ACdW46hxPg2F; Fri, 28 Jun 2019 19:58:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ECBC38817F;
	Fri, 28 Jun 2019 19:58:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7D8651BF393
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 19:57:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7A6102012D
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 19:57:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o62hOFhOIQBj for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 19:57:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f68.google.com (mail-yw1-f68.google.com
 [209.85.161.68])
 by silver.osuosl.org (Postfix) with ESMTPS id EE19A20117
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 19:57:58 +0000 (UTC)
Received: by mail-yw1-f68.google.com with SMTP id y185so4651679ywy.8
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 12:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/Zbt8t4OGSrBZUltQdpu2XfV4/PLifVH/Z0A6OyR0+8=;
 b=bsREio19ZCYiktCkIASujl5tmzasz+I6GbX0QwjW1yWtrPHLtl8F72d/tP0OV718gu
 JhET9fkvZSnspuxgKrEOx/1kP1SYjQ7fj0fI/XoKoCGyk+qi6UDO6wRJo+hNRVYcyyxq
 0JSncshPTPt64doooXNY6ma4/ktV2ka0yVK/xrE/yAYCFGpIjfHmlQ4eCCCi+mJeJUsc
 8W4PI0vw66GNUmY1JGqXcSHa2CiCZHRkpxNiXv/kZ+fttkGp4qs1PP7G81iPFP6xFUG7
 n7G6MbZWqfBIpLiVXTzG3xd/E7GrLNqS/TCCUVcsr/qDjsGrDy2eGI721OOsI6wgTV9h
 S/yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/Zbt8t4OGSrBZUltQdpu2XfV4/PLifVH/Z0A6OyR0+8=;
 b=V+SfJorQXGD/LL78VQtq5CAZf9ra5dFwvjHvvqjZo+rhl8tNYMFI7tVCYQieo0VeOK
 rwlsShm/oMg/65Bm14rsw3JQiRixoN5TqJM4hBsNpjFB0itJrOYmmcT8764qpSQs9xAQ
 YSZiE45R2HS7KUGLHIqP38b4QDaRjVJ5v66095VxbzYA6cg1uO30/rBzPazQc1jpOyv1
 IO7T69omInCkceb23YU5o7kRGbZjKzrz7D2GdG4oJdcTi8qDWvUzSlsZGKCS/BUTwnbu
 SlBjrZb+oC4PN8WLaJnl8Mr/3TLbI6SzPYy/YerL/R5lLf5ft6VDNfv1267Uk212JDLz
 5q/w==
X-Gm-Message-State: APjAAAW86gB0NT8EPYXOqWwSfjhPICQn0pPU5rwViEElUdOqzSR/Lx8Z
 +p3FtkbTKoIaHqup7wS2UjEh8yPP7RQ=
X-Google-Smtp-Source: APXvYqyMlUeSuDw/BDC2UeWeDp3Ss96wfNuttrbN24k9oRIaXNe4rjDgzrDPkjTaH96S7Vqb7yTiWw==
X-Received: by 2002:a81:2889:: with SMTP id o131mr7322864ywo.414.1561751877757; 
 Fri, 28 Jun 2019 12:57:57 -0700 (PDT)
Received: from mail-yw1-f42.google.com (mail-yw1-f42.google.com.
 [209.85.161.42])
 by smtp.gmail.com with ESMTPSA id d9sm737372ywa.69.2019.06.28.12.57.57
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 12:57:57 -0700 (PDT)
Received: by mail-yw1-f42.google.com with SMTP id b143so4650873ywb.7
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 12:57:57 -0700 (PDT)
X-Received: by 2002:a81:8357:: with SMTP id t84mr7023115ywf.109.1561751559659; 
 Fri, 28 Jun 2019 12:52:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190628123819.2785504-1-arnd@arndb.de>
 <20190628123819.2785504-3-arnd@arndb.de>
In-Reply-To: <20190628123819.2785504-3-arnd@arndb.de>
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Date: Fri, 28 Jun 2019 15:52:03 -0400
X-Gmail-Original-Message-ID: <CA+FuTSdL=GwjhbERsePAJfbakgEQZb7X51UHw=+4R9dJD3JD4A@mail.gmail.com>
Message-ID: <CA+FuTSdL=GwjhbERsePAJfbakgEQZb7X51UHw=+4R9dJD3JD4A@mail.gmail.com>
Subject: Re: [PATCH 3/4] staging: rtl8712: reduce stack usage, again
To: Arnd Bergmann <arnd@arndb.de>
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
Cc: James Morris <jmorris@namei.org>, devel@driverdev.osuosl.org,
 linux-scsi@vger.kernel.org, James Smart <james.smart@broadcom.com>,
 lvs-devel@vger.kernel.org, Julian Anastasov <ja@ssi.bg>,
 coreteam@netfilter.org, Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Wensong Zhang <wensong@linux-vs.org>,
 Dick Kennedy <dick.kennedy@broadcom.com>, Kees Cook <keescook@chromium.org>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 Simon Horman <horms@verge.net.au>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 netfilter-devel <netfilter-devel@vger.kernel.org>,
 Network Development <netdev@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 28, 2019 at 8:41 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> An earlier patch I sent reduced the stack usage enough to get
> below the warning limit, and I could show this was safe, but with
> GCC_PLUGIN_STRUCTLEAK_BYREF_ALL, it gets worse again because large stack
> variables in the same function no longer overlap:
>
> drivers/staging/rtl8712/rtl871x_ioctl_linux.c: In function 'translate_scan.isra.2':
> drivers/staging/rtl8712/rtl871x_ioctl_linux.c:322:1: error: the frame size of 1200 bytes is larger than 1024 bytes [-Werror=frame-larger-than=]
>
> Split out the largest two blocks in the affected function into two
> separate functions and mark those noinline_for_stack.
>
> Fixes: 8c5af16f7953 ("staging: rtl8712: reduce stack usage")
> Fixes: 81a56f6dcd20 ("gcc-plugins: structleak: Generalize to all variable types")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Willem de Bruijn <willemb@google.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
