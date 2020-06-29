Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCD920D594
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 21:35:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 205E6888B5;
	Mon, 29 Jun 2020 19:35:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kkByapNmScEh; Mon, 29 Jun 2020 19:35:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2B378886EC;
	Mon, 29 Jun 2020 19:35:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 129E91BF355
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 19:35:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0C43487509
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 19:35:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gkxc3B1JUdyd for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 19:35:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 62115872FC
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 19:35:33 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id s9so19521286ljm.11
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 12:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=XdfoRVGuOCD2JOxmLnJxyvoO2f5zjf1xh4i//8cGLHs=;
 b=gpwVXA/V5cOLuXKmX7dgfssFZxK1fXZFefhwdriT+sh5Qj3q9c8C6bPdMDRvcElCeF
 DAPEcG4rKGeeS0ZnzJqGA1BTFq2MaqHvrMngM6vhZe+rgKSIg+mO1IEpqFtCBTi+a4t5
 LYdland6RGMRy1Qwc9DWH4LPAXzTwmU3iGvAVM6EnVaBLHBXulh3l6YxhcTKhOSSAHSB
 17Ig0/EXr0M+dCi2OkYoCP0mmcG6/tnJCp4qNNBIvUXEXjwNLOQUcIRJN8cxLiVhjJhL
 rCgi7MD5+qPyv9BId1vOIwPJyb8kwENJa1nJ1qz6BVZCernZ0IJDmDCFjULc+zs5kpyp
 2wgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=XdfoRVGuOCD2JOxmLnJxyvoO2f5zjf1xh4i//8cGLHs=;
 b=LyhlxNmxG/pZ63aZgqZ1NYeGYjpAjh5MS6B+KK/SP6LOFQu4T2CHLTf/mt/RT+ccQA
 gOlaDjnD87YQuEPo+UZFqbP1bBBfR//N8N3Z+cangpFo1kswK1TxOXT5QcUUM859xRao
 yWp8oCtmM2ffpL6c3oNDZGqOShbo+VsAv/eargSebNlDNz6UfL963AMcs/PHKtI1jyH6
 NflyV14zQzLG0p6AUBmUDLPQPPs7o1IdNqF5p5YMGc9Q36S6B2turtFC49r1pAIKL//N
 rSWohC25cukgFWljgFXZCRtIyiVdfJ1kQPiijo8pCZTs289Ug6/ybX8EAnHfN1kNC18p
 gumg==
X-Gm-Message-State: AOAM533P0goXrM5Oo2TrEbdHOGI7ydBLl6t4I63SVvB+IzUSdtPMC+BS
 Wq1pkUt8ibsIxeu/v8PmvL7cusQw9W+i6vOdlm4=
X-Google-Smtp-Source: ABdhPJx/RqzF7YoUMhNE1FraXInC8c2TI+Dy1NcWuD1674GzhRv9qarcOfMQ7irlgOlmwcBzK/k5+zUWp8ZEZleJ85o=
X-Received: by 2002:a2e:9e4f:: with SMTP id g15mr8851230ljk.159.1593459329312; 
 Mon, 29 Jun 2020 12:35:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a2e:a551:0:0:0:0:0 with HTTP; Mon, 29 Jun 2020 12:35:28
 -0700 (PDT)
From: "Mrs. Daborah Raymond" <aleksandralex37@gmail.com>
Date: Mon, 29 Jun 2020 12:35:28 -0700
Message-ID: <CAF4h0eZoz_H+Or+P_uCni=0C_e-ej+s35v9Dz9n2pbFOytp+Rg@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
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
Reply-To: daborahraymond@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear friend,


I have a business container transaction what that some of( $13million dollars)

 I would like to discuss with you. If you are interested, please
contact my email

address (mrs.victoria.alexander2@gmail.com)

My WhatsApp number but only message (+19293737780)

Please do not reply if you are not ready
Thanks
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
