Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A29AD321E60
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Feb 2021 18:44:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5879A83449;
	Mon, 22 Feb 2021 17:43:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fy3dF13XT8Yj; Mon, 22 Feb 2021 17:43:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BA21831FB;
	Mon, 22 Feb 2021 17:43:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A6911BF3FB
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 17:43:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 12F9E85643
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 17:43:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i4b8c8eoXNcl for <devel@linuxdriverproject.org>;
 Mon, 22 Feb 2021 17:43:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4F3B1855D1
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 17:43:41 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id s16so8184656plr.9
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 09:43:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=n3eH8fc7c63400pMFay9v4NYcLZ+o0vJKsl88V8S4Zg=;
 b=H0uQxViryLxerqBZI5zEvoJGqobOFoSBuvzaayR5BcDPXO/xhN3ht3z/dhEXd4uREo
 Zeg5LBTnRJICoSKIZq8b4KkHbPGUv2hFLrvr3+FzOew+JDgNCg+kxRDkkViPTJ1+CkK8
 Bfhe8uQ04qcQYubB1T7qfxEkTdTILlwGo+6ChI7VXpyqjWd3F9NvY+PpkaqrvwxMlIFB
 6fvJGp9M0Ai2D3epeWonOfLfVlgokNpou4kgIxSIgAaEzFvVe3O6zIxJ2fRrUg+uPwP5
 AS+OCN4OI6zqW4YqL76CDI1RvSga5io5F9oWkrSaeZg03IsI9Ahrw9NZAxScYDlAaU+a
 9J3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=n3eH8fc7c63400pMFay9v4NYcLZ+o0vJKsl88V8S4Zg=;
 b=C8uv6TqnuqeOsl81JfkKBWv6dxA+mOyPb7eUQE2ktqo7DO6aQBg+e2umarDvuTFIVX
 AOrm9OEoIpyhqo2d1yybEUcQ1dvyBnHVj9mlm/79e3cUzWK86QlZV4BwdtT/gHzpsj3k
 hp47o2qkMRcRtyU/3C6R3o+90e2KhgQhcbbYOJ29+TwnHaxr+Cia3UScj53hJ4FD0t2z
 eySp/3dwWa79kikS3Xk70Rav5GgTU1oUykQFzqeZu4STPGcTKNGJtrb06dh465LbShl8
 qsisowGE4/F+WB+3ae4g2JIf8E8a4QLRpRdZpnrLUxu/mtWan57Nk5INpV0O+iYPY7tX
 vQjA==
X-Gm-Message-State: AOAM530sO5z3LyqgmQHSS43jXtYiF5lpcvXoJEZDw6Lv9fez8AQ1dGQa
 Ocew/6c9qCrEfC41IKPJJ5SzlP2FsULtvYyz/u0=
X-Google-Smtp-Source: ABdhPJyax0cjxRrgZNMlkjkIrL7pxwBma1FHByalrW50qlF/Fs6y9ntDWyozn50JjGe2LrI3rKq78SaKvlCza6imhkQ=
X-Received: by 2002:a17:90a:a585:: with SMTP id
 b5mr24587621pjq.110.1614015820785; 
 Mon, 22 Feb 2021 09:43:40 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:678b:0:0:0:0 with HTTP; Mon, 22 Feb 2021 09:43:40
 -0800 (PST)
From: Mark Jackson <chrisuche005@gmail.com>
Date: Mon, 22 Feb 2021 09:43:40 -0800
Message-ID: <CAOBPeD=tCc-dtzhhu7BZ+Zn+EELh=7Z8FEBbs4-Px0PnSWN-gw@mail.gmail.com>
Subject: Your ATM CARD For Compensation
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My Dear Friend

This letter is to acknowledge the substantial contributions of time and
energy you have made in trying to assist to claim the fund through
your account, despite that it failed us because of your inability to
continue financing the transaction.

Besides I'm happy to inform you that I have succeeded in transferring
the fund out of my home Country with the help of a new partner from
Tuvalu.

I am now in Tuvalu for investment and Tuvalu is composed of 9 coral
atolls along a 360 mile chain in Polynesia. They gained independence
in 1978 the former Ellice Islands.

Therefore in appreciation of your earlier assistance, I have decided to
compensate you with the sum of $850.000.00 USD which I raised in ATM
CARD on your favour.

This fund I have given to you has been deposited with a bank which has
already opened an account and issued to you ATM CARD worth
US$850.000.00 (Eight Hundred and Fifty Thousand United States Dollars)
The ATM CARD is withdrawable from any ATM Machine in the world.

So feel free and contact my Personal assistance (PA) in Benin
Republic, his name is Mr.Stephen Pena

Address: Carre 1299, Ste Rita City
Cotonou,Benin Republic

Email: ( spenaneoris@gmail.com )

and instruct him to send the ATM CARD to you.

Please do let me know immediately you receive it.

Regards,
Mr.Mark Jackson
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
