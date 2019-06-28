Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7245A241
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 19:27:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 93AFA86E26;
	Fri, 28 Jun 2019 17:27:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g6mqes4n3Yyp; Fri, 28 Jun 2019 17:27:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4611F87666;
	Fri, 28 Jun 2019 17:27:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9ED701BF844
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 17:27:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 98FA98826A
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 17:27:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gga7XOhYiHkf for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 17:27:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2C73786229
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 17:27:04 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id e5so14153157iok.4
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 10:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=+U2gVHuaG0DVSq5b6nRpN6PYUhH5sGkmtGK3vlqF0no=;
 b=rG6fkSgEnU28dFl5tvTe0OYhgni9ymXBRnbhFDA280dPO8dL5yehTJw0wND4Aowd+D
 i51l5RorHBeqUXdT6YWGIJUHNvQMBVoKYxmgMue4v7MswL05eQUmWaijgFndc2WhbJfZ
 AgW94AKVWoSvksOPGdlyx73iQmCo6bpF94BxFv5D5w0n/1aMzY9+9ClHGRmPFN9fouqn
 hkk0S/DJod3PdvFVQJ0qWyNpOdBVhE3fKyeRMOHMJ480A+TIaPgcc3/4y1w99drS+oGL
 DrXikfBUg5zfO4ZlEUCurmsp3aIivGx8wrGZX5h669e6IdwA69X6ILLVq0g4KSO6n4Np
 KrUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=+U2gVHuaG0DVSq5b6nRpN6PYUhH5sGkmtGK3vlqF0no=;
 b=ouSWQGpZYoJP8zlAGfrfJBVii4lfKBOFt6BRpBAJBqtFI3XKqOgV7Z9qnLdgNVWi7r
 OudB78MhCKiT3VbtPRDeTdbIWEmmtMSFjWJTFW7c6ZvswhDwsy7VOGXOEsHg3xqdVYpU
 epsoygIS/yC7rhC8PbCWEcpGCGRkIJdJ3iD787I+hx0NkIHsuLK0uzD9H4euxyct8r86
 tDYyM4IoJVI42U+v0CFz7lqAxhbiTTlQwU0ETnYG22QRzKJGjYTwDDqY5LEhY433BV8M
 ZzlSTteAu3CKhtYHLdi85k9ZqOFV0Oxax/TOYov+d53o8gil0LYX2Niw4A85rUCDfI0L
 y3Xg==
X-Gm-Message-State: APjAAAUeD7tXoU1zK0a+m8f0dU+vSKcjVSQH/u8y04tHWw9Oe6YHcbma
 w0tbWbiDRgUMMkIZFnwpR4rGV/HdkbccWXLCxxY=
X-Google-Smtp-Source: APXvYqz/NJ6C1b17UyuzgifBeHM9CIvNWgXjeEEmX5QQDv15GV2L0o0m3AFNHfI1Inbht6zK2Nl4j41DG2NcYc6BgJk=
X-Received: by 2002:a02:1087:: with SMTP id 129mr13381904jay.131.1561742823398; 
 Fri, 28 Jun 2019 10:27:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190628170046.3219-1-harshjain32@gmail.com>
In-Reply-To: <20190628170046.3219-1-harshjain32@gmail.com>
From: harsh jain <harshjain32@gmail.com>
Date: Fri, 28 Jun 2019 22:56:51 +0530
Message-ID: <CAKuL1XSOux9+ff1OQyT3Q5hY+CZ1a_s+zDLUh7cgzCv_E92HhQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] staging:kpc2000:Fix integer as null pointer warning
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
 linux-kernel@vger.kernel.org, harsh jain <harshjain32@gmail.com>, 
 harshjain.prof@gmail.com
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 28, 2019 at 10:31 PM Harsh Jain <harshjain32@gmail.com> wrote:
>
> From: root <harshjain32@gmail.com>
Again sent with wrong user. Please ignore this series. Will send the
updated one.
>
> It fixes sparse warning in kpc2000 driver.
>
> Harsh Jain (2):
>   staging:kpc2000:Fix symbol not declared warning
>   staging:kpc2000:Fix integer as null pointer warning
>
>  drivers/staging/kpc2000/kpc_i2c/i2c_driver.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> --
> 2.17.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
