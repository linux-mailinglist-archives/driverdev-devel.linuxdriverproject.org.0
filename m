Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D35244FFFA
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Nov 2021 09:30:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 69F7940394;
	Mon, 15 Nov 2021 08:30:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zjxq8Wk15BNU; Mon, 15 Nov 2021 08:30:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 40A6C40384;
	Mon, 15 Nov 2021 08:30:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 586231BF29E
 for <devel@linuxdriverproject.org>; Mon, 15 Nov 2021 08:30:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 472E340430
 for <devel@linuxdriverproject.org>; Mon, 15 Nov 2021 08:30:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DAExSiOfzdYU for <devel@linuxdriverproject.org>;
 Mon, 15 Nov 2021 08:29:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x92b.google.com (mail-ua1-x92b.google.com
 [IPv6:2607:f8b0:4864:20::92b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B892A402CB
 for <devel@driverdev.osuosl.org>; Mon, 15 Nov 2021 08:29:59 +0000 (UTC)
Received: by mail-ua1-x92b.google.com with SMTP id r15so5942603uao.3
 for <devel@driverdev.osuosl.org>; Mon, 15 Nov 2021 00:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=3a8zASbwuCJueHjafSraYg3mz5t9YgqGAdn4Nkubq2Y=;
 b=UrKuPEAOj5ThdMCxVnzD3PgYNvi8pYMi4sWSvy/+JURzed3SD1pN7oqmzQnD1VQcIn
 w6ZpXz6ILGfz0g3y7zGfyUgU6AK60pCJjH1SKm3VXodL5qULklRK+OmLHGynoSYejH71
 fDeAAFZbw6271/woN3H3D+jwG43z0oliFDc7CLwHm7m4on+K7UTKwJOklGlrqim1DSVu
 F8tKCx6XRzzp2xf/7prLHyAVQhMWzEG9gf3Xr0pZHVSBC5hezOmxHoFInvcb3bv14E8u
 7JhJAUE03wBcX9XCi77iiNYMlryQdItRnSfh5xsUxCzWgY3xGLPyOxv8YfUsxynZ/lTx
 2q7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=3a8zASbwuCJueHjafSraYg3mz5t9YgqGAdn4Nkubq2Y=;
 b=h33HBez9AAUubJ7kBXUGzweyWdNCXIX3MjjYu5nW/E4B1pQJU2b99yxt1TWoSWK+rC
 XDaxIiNdcNPprpmibxFPrWwRSPgTlUlVBAqVHxgs1Jyjv84xao9ECLD3L4ox8yF08p13
 0kNJSDNtQc/Kz6u/CxLOfCsfNrJK2q5W0t9DLPF7OiuefSLiKfLKKQe3MsB+BJUH9jci
 Y5zX5Ojr1NJrbY7Fk/K+zRPCuZU7dJd9zlYOdfTCJuzvqLXucN/VXypH6Sb9HtB3LUdg
 JnjZ3LFxwkRLr5iXdhkJNtZxiuaczhQZaRQG0bA3LKGzPROcICUIdt747lw5ePyIuBb8
 Yj6Q==
X-Gm-Message-State: AOAM532E5cJHZdjmq4UHvL0BQzNW3eU1BKBt4bjYB6L4I44qydC0SzU0
 za8qSZobWQAZ8toft+DmjJg7CKm4NZcfCIKQ79E=
X-Google-Smtp-Source: ABdhPJxN2XOS4P9+6Ru+2yNed2FCIm/YgcKwfwPeDAHrWzBVGurLu+0aBr3OxMTxingBBqeraEJnZ9uvv0EwFvjQPbc=
X-Received: by 2002:a67:f6d7:: with SMTP id v23mr39925826vso.22.1636964998377; 
 Mon, 15 Nov 2021 00:29:58 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a59:b586:0:b0:23d:2f30:78e5 with HTTP; Mon, 15 Nov 2021
 00:29:58 -0800 (PST)
From: Mrs Bill Chantal <patrickmurphy791@gmail.com>
Date: Mon, 15 Nov 2021 09:29:58 +0100
Message-ID: <CAEsU2=hqtQHF4Q0VCHYzJ3h+5OCCogp=N8=bKCDrtcvR9572vg@mail.gmail.com>
Subject: Dear Friend
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
Reply-To: mrsbillchantal2022@mail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend
You have been compensated with the sum of 5.4 million dollars in this
united nation the payment will be Issue into ATM visa card and send to
you from the bank  we need your address, passport and your Whatsapp
Number.
Thanks
Mrs Bill Chantal
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
