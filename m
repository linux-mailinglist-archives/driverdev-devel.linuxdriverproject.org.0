Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 013724C377E
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Feb 2022 22:18:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6619B60640;
	Thu, 24 Feb 2022 21:18:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IGCKjphS8_kF; Thu, 24 Feb 2022 21:18:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A458605E3;
	Thu, 24 Feb 2022 21:18:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 241651BF31E
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 21:18:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 11C0F40355
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 21:18:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DipeXZROZvA3 for <devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 21:18:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 97D8040246
 for <devel@driverdev.osuosl.org>; Thu, 24 Feb 2022 21:18:01 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id o26so2157227pgb.8
 for <devel@driverdev.osuosl.org>; Thu, 24 Feb 2022 13:18:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=ZOTkulIx4cWD1e941VlIyVp16fUY8A24DYkHmck3JHg=;
 b=DPLyK2j71djezgahHGyLuymE5wfRjTRjrm186w2Or/yEEhFR8KNAEUaQwvvqoMpl3Q
 6Ii+WhTXnvLeNUglz63SRqkz1fcsCRvY1XTPl+b3Gz8Z4ZnrUGX+uVEFce9pmkT5Ictj
 8HlgN4HdtwN/m/sbw8l+SBHgEn70D4YEGk+U9bshEqeIM3zfF5OuYLsVIL0tLGNoGuYw
 xApZtu5pnIA/0Pf6v7WJj6OJ+h1p8AwpPngYSPOgdWXSOQh0Gwdjy53qcxE7ehvG0tiH
 mNYjOPsemEys2VbHuwW1ZZYOBrQ/e4/pBuT1NP8yY0I0viyuRObgKHvGH5MTsFtSf+JT
 kRaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=ZOTkulIx4cWD1e941VlIyVp16fUY8A24DYkHmck3JHg=;
 b=bAcHjkwSh8Gw9LOaONgpUjMeIESAzSYYCCaEOOMQkLVU5VD9jMDs9tq2N9to0aMcu4
 Bdwa7uYciRWb4sn5vxgJxjZQ8xnQGwCzqRxfNFk/T3ziTUsYBaCnB/D//WeKLlxFJO3r
 YrJ5uBLhWhvGBZrTNUG2zGoMegA2oURRXEnBpYHFrSW7oD6ShL6b3dwFG0P1jCR6plQ5
 BGJKf0V2AXMQrL4M2xie2k+OdX7rzil3gdG6hzbgeHOwvk01yZDA17P5kJHlToUkDnQK
 rBux+aL98wMKQA8SFbfVeSpXv4w4e189h0lIVGOTgq4YY0kikuswv1XUFBqIWTihAKjk
 5CBA==
X-Gm-Message-State: AOAM533XhAKImC9uHu41jbqnzq7xYH0FJU2k2raNG3KCZQTBiyn6LX2B
 GfNYFzzD9/rSjDI6UXxPTpzwjSUj2IcAyGlDu+I=
X-Google-Smtp-Source: ABdhPJxd7kqe/D/rrwFX1ww0EvVBZ9AmmBHxTJpGmfvdNHgxfNn0Xhu08GVBUoe1N3IPrmcWxroNSKPAObzic0z5ZQU=
X-Received: by 2002:a63:921a:0:b0:373:df77:ee5d with SMTP id
 o26-20020a63921a000000b00373df77ee5dmr3618025pgd.90.1645737480877; Thu, 24
 Feb 2022 13:18:00 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:9e88:0:0:0:0 with HTTP; Thu, 24 Feb 2022 13:18:00
 -0800 (PST)
From: MR DAVID MORRIS <mrfrankanthony70@gmail.com>
Date: Thu, 24 Feb 2022 13:18:00 -0800
Message-ID: <CACmz46NdT7QhtHE49jK5Ae1Z1AGWLkUHE01kyRqkH+7QdoHj7A@mail.gmail.com>
Subject: Dear Beneficiary
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
Reply-To: mrdavidmorris1718@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
I am MR DAVID MORRIS, Inspection Unit Manager United Nations,
Inspection Agency in Hartsfield Jackson International Airport Atlanta,
Georgia.During our investigation, I discovered An abandoned shipment through a
Diplomat from United Kingdom which was transferred from JF Kennedy
Airport to our facility here in Atlanta,

The ATM debit card is worth $8million,And I  Ascertain you
that the consignment is in your name,you are advised to provide all
detail for claim.

kindly reconfirm bellow detail.

Your Full Name:
Your home Address:
Your cell number:

Sincerely,

MR MORRIS

CONTACT.......... mrdavidmorris1718@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
