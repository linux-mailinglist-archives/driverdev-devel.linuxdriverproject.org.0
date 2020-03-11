Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0781A181562
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 10:58:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 22C0A869A9;
	Wed, 11 Mar 2020 09:58:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YlS3kS8HOfKp; Wed, 11 Mar 2020 09:58:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1210E86955;
	Wed, 11 Mar 2020 09:58:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B4B6B1BF5DB
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 09:58:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B1236875EE
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 09:58:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J3vKePUktOC4 for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:58:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ACAC6875DB
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 09:58:29 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id e18so1556619ljn.12
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 02:58:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VAI2bOsO0HpRfJqCHKKcijyQkz20rw0OzgA5Crqoiz4=;
 b=qE+qCfTImhyNMTETX07RD5dsi8NIkgqqJDaGI1szkffH1BbuaSsCzm6lf4b7GmPUoZ
 kYaJBqSYl/lbWqR0WJD/L/A0JBDfAan5dXpGpaqLusTNhDpDqvIh+2qMt1KBEgO8s5y9
 kW6p4fkvY9nMUG+XobTgQgAxyFimL/fFoKmtXJEkeKIKBPd6e4R2Ppbykid/m91Fq7OV
 KEgLyQqauircKq4cJBG8ecbhHeumi5VEQwmdM4XbmTAP5iL7R+nyqgCH+R1abGiZYiO3
 YFaec7VSqeaRWGUbHeLgBJhTvNGyWMrV0JANam5c3DUGfw9R8cUEWOkjUXFz6gnJcelR
 sNQg==
X-Gm-Message-State: ANhLgQ2jLsLPU7e7U3qGA7GTLWu0W40KyFZgmWkOtufsl88/DAy0gPN3
 /onbHf3j2ywOWbPx/fiWIb4=
X-Google-Smtp-Source: ADFU+vvS/3XWjiuTpD521o/YzZvXK+sFaQu0rsj54RL+2S9qftvdNg171Q67d/3brpXif2QhmyanQg==
X-Received: by 2002:a05:651c:1044:: with SMTP id
 x4mr520801ljm.230.1583920707833; 
 Wed, 11 Mar 2020 02:58:27 -0700 (PDT)
Received: from xi.terra (c-12aae455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.170.18])
 by smtp.gmail.com with ESMTPSA id f16sm3094218ljj.34.2020.03.11.02.58.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 02:58:27 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1jBy7y-0004c2-V6; Wed, 11 Mar 2020 10:58:15 +0100
Date: Wed, 11 Mar 2020 10:58:14 +0100
From: Johan Hovold <johan@kernel.org>
To: Takashi Iwai <tiwai@suse.de>
Subject: Re: [PATCH] staging: greybus: Use scnprintf() for avoiding potential
 buffer overflow
Message-ID: <20200311095814.GI14211@localhost>
References: <20200311091906.22980-1-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311091906.22980-1-tiwai@suse.de>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 11, 2020 at 10:19:06AM +0100, Takashi Iwai wrote:
> Since snprintf() returns the would-be-output size instead of the
> actual output size, the succeeding calls may go beyond the given
> buffer limit.  Fix it by replacing with scnprintf().
> 
> Signed-off-by: Takashi Iwai <tiwai@suse.de>
> ---
>  drivers/staging/greybus/tools/loopback_test.c | 24 ++++++++++++------------

Thanks for the fix.

Would you mind resending with a "staging: greybus: loopback_test:"
prefix since this is not a subsystem wide issue, bur rather a bug in a
specific user-space tool?

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
