Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C5E47E5FD
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Dec 2021 16:47:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E72A60F04;
	Thu, 23 Dec 2021 15:47:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QcDZfefM5loq; Thu, 23 Dec 2021 15:47:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCA5A60EAA;
	Thu, 23 Dec 2021 15:47:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E57F1BF3C0
 for <devel@linuxdriverproject.org>; Thu, 23 Dec 2021 15:47:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1E1C6415E0
 for <devel@linuxdriverproject.org>; Thu, 23 Dec 2021 15:47:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PM6dtVsPUW2m for <devel@linuxdriverproject.org>;
 Thu, 23 Dec 2021 15:47:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com
 [IPv6:2607:f8b0:4864:20::335])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8329B415B7
 for <devel@driverdev.osuosl.org>; Thu, 23 Dec 2021 15:47:25 +0000 (UTC)
Received: by mail-ot1-x335.google.com with SMTP id
 n17-20020a9d64d1000000b00579cf677301so7442417otl.8
 for <devel@driverdev.osuosl.org>; Thu, 23 Dec 2021 07:47:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=eUatueBoZW48wTZESJnWAAOpi1imn7DodvU8RbzbWa4=;
 b=cqH1OhVijdnn8aQMvthV0CxKPdspfbvJmt6DDU8a2g6idO30n7e+dNEstmM0jUgnfL
 sKNE1DGO1aGDK9de4DAwBpni2ClKUPxDa+Cxc9WhjzL5Uot4VU4NdMR1VBUKPnPcvA9N
 5EMne7bAoiVZG5eVR59AAn8JbtH64UxRcwMmfC+VMekKjGd5nYhIfhabpWovHDYARqL+
 qWqyzbABoHNOnViFIU/s9TBwHQ5+8Z9YHEBo6zkk+KPiS7zq8eWT0vCTSMyremkr6T+W
 x/cCPmpKsZMiYtGkCIDOkRfv4kX3tEeHVnpHr6FS5qVA4lb8pYU4s8cdd7zlTjkiwqUw
 H+qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=eUatueBoZW48wTZESJnWAAOpi1imn7DodvU8RbzbWa4=;
 b=RZoSRVtGXX8hUb0dePVuA97L9W+6EIIu+o2N9AhkytD24JWofWI5EYrdFKinZ81LVQ
 ZfLggfRrYksDgHu7yY4UrLkmcdtqdwhCvnvRhUfC22PFhnUYyzpynGGfft5QDrD70ijU
 j298jxZ0ANe9qEnilPtF2JrBYJNxSBJRLK71MqhnbOWXPZqJ74EWrfJg18vPEU10fsxo
 5bE1d5sO1MWhyT8OJ6sgErTxmWaEWTxp73w0YWKTZaPv6sjYwHvqs+j/LTpQgndU5xOe
 c6R8vZ2O6qhDiyxaGnGiAAHQjqlE3aTRoEZ/X9rRVGH93gXlFMnleb0BROq2vLbRZhUc
 DBVA==
X-Gm-Message-State: AOAM533zezxDfQDF5PJP1mjI1IJYqODBnnBNOSw7pndPCOAPFBrK9XrM
 kuIu+ICKiRY73RxY+/jfIw+AC1WGjZxMkXJDq58=
X-Google-Smtp-Source: ABdhPJxxfNprtZgxABhpN/k9/i27fwfpE1n2GVAvgPPQYLNqi+O6S/4OIibhIVrQ4eicHzPqdZrwQ62JN7Jl3w9xSaE=
X-Received: by 2002:a05:6830:12c3:: with SMTP id
 a3mr1810223otq.24.1640274444650; 
 Thu, 23 Dec 2021 07:47:24 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a4a:d02c:0:0:0:0:0 with HTTP; Thu, 23 Dec 2021 07:47:24
 -0800 (PST)
From: Master Koffi Solomon <amakriijeoma@gmail.com>
Date: Thu, 23 Dec 2021 15:47:24 +0000
Message-ID: <CAGTRnXNws-vSXjEoi3QddLYzbJeuPX8EMx=rRiF7ws0stJnJbg@mail.gmail.com>
Subject: Please i need your urgent help
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
Reply-To: koffisolomon05@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello dear beloved,

I am Master Solomon, a 22 years old and the only child of
late Mr. and Mrs. Aka David. My father was a businessman in the cocoa
and gold business here in Abidjan, the economic capital of the Ivory
Coast. My father was on a business trip with one of his business
partners who poisoned him to death on that business trip.

Before my father died in the private hospital where he was treated, he
had a sum of five million and five hundred thousand dollars ($
5,500,000) in one of the leading banks here in Abidjan, where he
deposited it and uses my name as the closest relative, since he has no
other child, and recommended me to choose a foreign partner who will
help me move the money abroad for investment  so that my evil
relatives don't kill me and take away what he left for me.

I want you to transfer this to your investment account there in your country.

I would like to ask for your support in the following areas:

(1) To provide a bank account to which this money is transferred.

(2) Act as my guardian to secure this fund as I am only 22 years old
and have little experience.

(3) To help me get to your country after the transaction is complete
so that I can continue my studies and invest under your care.

I am ready to give you 30% of the total amount realized as
compensation for your effort after completion.

Thank you as I am waiting for your reply.

Godd bless you.

Koffi Solomon
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
