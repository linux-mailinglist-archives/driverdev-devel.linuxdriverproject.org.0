Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E5AD31F891D
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jun 2020 16:05:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 277142077C;
	Sun, 14 Jun 2020 14:05:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h0DtDexFgDTa; Sun, 14 Jun 2020 14:05:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 97EA82079A;
	Sun, 14 Jun 2020 14:05:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 597461BF5AE
 for <devel@linuxdriverproject.org>; Sun, 14 Jun 2020 14:05:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 44BAD2076F
 for <devel@linuxdriverproject.org>; Sun, 14 Jun 2020 14:05:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Y4UElTuidLl for <devel@linuxdriverproject.org>;
 Sun, 14 Jun 2020 14:05:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id ECD43204A4
 for <devel@driverdev.osuosl.org>; Sun, 14 Jun 2020 14:05:34 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BB6D2068E;
 Sun, 14 Jun 2020 14:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592143534;
 bh=0mFPGq9ZQ3DaTv72v947D8KCJ0CgZsUjqDrhCodkraY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sW1P1kjYmycL7YPadTEgKDzwhmyN3gHb1LVXHfZnFBUJAkuItTfwE0tLU4W6ZCgKw
 hyRQvkGzC2AZHphuHIneL5rqvVEo5wB+zcB9hS7i61SUZH+fseDj/r1C1BuvPdnzbA
 qMVY5IdbEPH+EFyph2oLMbWw1FvISelJouRZj5Eg=
Date: Sun, 14 Jun 2020 16:05:31 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Ricardo Ferreira <rikajff@gmail.com>
Subject: Re: [PATCH] Staging: rtl8712: Addressed checkpatch.pl issues related
 to macro parameter wrapping in parentheses.
Message-ID: <20200614140531.GA2661398@kroah.com>
References: <20200614135125.19502-1-rikajff@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200614135125.19502-1-rikajff@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 linux-kernel@vger.kernel.org, Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jun 14, 2020 at 02:51:25PM +0100, Ricardo Ferreira wrote:
>  #define init_h2fwcmd_w_parm_no_rsp(pcmd, pparm, code) \
>  do {\
> -	INIT_LIST_HEAD(&pcmd->list);\
> -	pcmd->cmdcode = code;\
> -	pcmd->parmbuf = (u8 *)(pparm);\
> -	pcmd->cmdsz = sizeof(*pparm);\
> -	pcmd->rsp = NULL;\
> -	pcmd->rspsz = 0;\
> +	INIT_LIST_HEAD(&(pcmd)->list);\
> +	(pcmd)->cmdcode = code;\
> +	(pcmd)->parmbuf = (u8 *)((pparm));\
> +	(pcmd)->cmdsz = sizeof(*(pparm));\
> +	(pcmd)->rsp = NULL;\
> +	(pcmd)->rspsz = 0;\
>  } while (0)

Does that change really make any sense?  checkpatch is a nice hint,
sometimes it is not correct...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
