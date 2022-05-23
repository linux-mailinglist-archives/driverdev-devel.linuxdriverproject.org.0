Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D357A530C74
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 May 2022 11:57:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C98D610CD;
	Mon, 23 May 2022 09:57:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c9RAyHJtoTzn; Mon, 23 May 2022 09:57:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A856360692;
	Mon, 23 May 2022 09:57:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A8BBD1BF977
 for <devel@linuxdriverproject.org>; Mon, 23 May 2022 09:56:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 97B5641954
 for <devel@linuxdriverproject.org>; Mon, 23 May 2022 09:56:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xw_t8Qt6bl5A for <devel@linuxdriverproject.org>;
 Mon, 23 May 2022 09:56:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com
 [IPv6:2a00:1450:4864:20::643])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C148F4194E
 for <devel@linuxdriverproject.org>; Mon, 23 May 2022 09:56:57 +0000 (UTC)
Received: by mail-ej1-x643.google.com with SMTP id y13so26882399eje.2
 for <devel@linuxdriverproject.org>; Mon, 23 May 2022 02:56:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=WTJUfxKwBKekSBSUnia4+MJkP6oFkyw0FVWZM+5Ui/A=;
 b=OvCLHpd5mLrFvqiiOWTT+Peno2QeFsDFZfyCYTcJcfkizHv37bOoWuBkt4pSqNQgj5
 m16VL5J3hXA+u4Cz/1h7NLPFSBWDS7ZUuFGro8fS+UYuIw7QpiVt215e3TuBW8mGh+SP
 fbe2CXuhLQMyf11Pm2yu8ivqOyl4uI1mio/RCYNRhSJxF/9tLh8MuXPQLVCsZZSaPiUn
 4JcN4QtdOkCZ86hRJicVo7T8vp1ztM/aemlLpq2NGkusA4JLgTzyce0EWkHYPpShvZ1h
 Fq4IRDqQsXtKDCw/AEB5bsrfX5V+eMiR7blX9Ll4lFBZt/8vsD1i/40QmuhuGlxc88cz
 av7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=WTJUfxKwBKekSBSUnia4+MJkP6oFkyw0FVWZM+5Ui/A=;
 b=ojZRzVpKeJ5Fec1BHlT8StVvE5bzuYsWK98vqJQ3J3wGY7Fpm/I1UHXk7bOWOuRtQK
 byXUly8bwrh0ZJ7cnbZbpFmclS2DRDPi6qmKn5JF+5ZrMjXoetsnq7alqpqh63Xfl0QV
 y3EP4M6BItlFmAdlwpp2OIB42hEnM2hltU8AiDe4VQ+13gQogvBOLEixXUb806q8V45O
 DXC0ymU21f7p72sPfaBDTPBJ6/RI1Us/N6hDqgRHP2wTuzi7pdVQlYdaOzcToXxa0Ggk
 Xvyd7rGlt1nhWQtRapkbCAsWjBSd9LqEEgqNFi8NKUgf6YxFQhzFV6VDtfnwpzZZuLyO
 VgYg==
X-Gm-Message-State: AOAM533QOXo2hMu7tuhZsOWATjbe6Pj6iY9UA23lSncOyN+EHJNY/OcR
 v9N737SG6jno5UsLp0YWXiWwhmjpPykZZNKX6i0=
X-Google-Smtp-Source: ABdhPJxjRdvM5YTFv1undaIlfK5pxftyytztWzSuSEZQZ0IXb08qVvKEhKBfQ/PqaIawvIEwSxb4OhJqLY7G7blEeHo=
X-Received: by 2002:a17:907:6e1a:b0:6fe:f357:3837 with SMTP id
 sd26-20020a1709076e1a00b006fef3573837mr1760448ejc.44.1653299815796; Mon, 23
 May 2022 02:56:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:907:7ea8:b0:6fe:73ca:cfd8 with HTTP; Mon, 23 May 2022
 02:56:55 -0700 (PDT)
From: David Ramchara <mrbthlnrd@gmail.com>
Date: Mon, 23 May 2022 10:56:55 +0100
Message-ID: <CAJp7S+qsNdz05KyKGzQ2fawdvQP-6GztgYmrMt4ZTK3ZL3Kcjw@mail.gmail.com>
Subject: Hello
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
Reply-To: ramcharan9910@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Did you receive my previous email regarding your family inheritance?
Reply strictly through: ramcharancrdavid@gmail.com

Best Regards,
David Ramchara
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
