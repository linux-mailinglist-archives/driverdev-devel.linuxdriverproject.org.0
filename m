Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D57F3460BA9
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Nov 2021 01:29:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13EA4410A8;
	Mon, 29 Nov 2021 00:29:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VygFBgxTC8rS; Mon, 29 Nov 2021 00:29:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63559409FD;
	Mon, 29 Nov 2021 00:29:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 47AA01BF96B
 for <devel@linuxdriverproject.org>; Mon, 29 Nov 2021 00:28:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 34976402AA
 for <devel@linuxdriverproject.org>; Mon, 29 Nov 2021 00:28:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AhcNd3AELjbH for <devel@linuxdriverproject.org>;
 Mon, 29 Nov 2021 00:28:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 48FD7400BF
 for <devel@driverdev.osuosl.org>; Mon, 29 Nov 2021 00:28:51 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id
 o19-20020a1c7513000000b0033a93202467so11200197wmc.2
 for <devel@driverdev.osuosl.org>; Sun, 28 Nov 2021 16:28:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=PIeTQDgX4DdJU+utbnrKItP+hY/ENzxpPET9Xz8CjHA=;
 b=jJUHgBlYsLjq5p0e2UecMIRa637xSAxfnSya64YZ6bA2GinNm9x09+sW1569Pm2vJF
 lmHy9I0qlrtWnuAP/ZOb9WJ4nJ3Yli/1GtJb9Z/m/92OGCKzzp9WDQZEU1L/mtbevMEB
 L7a6S1RT5TKdqo2M6CwYQ0QiRYOEWC9Nejg7zMeA6EWYd8Iq/0xXHau0FVAj45LhRjOk
 siZQ/rG9qfKfIU6yOxGsvAnhioZfKZB5P/nc50PuIc28sl85bsQLU/pA+PbhcUxWczbX
 PwWodyfJpeY+dbfQYrAwwBP014G5t2wI7D32sA9rqz3VjVQVrHh5gPEtXn92nPqx+ota
 s5cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=PIeTQDgX4DdJU+utbnrKItP+hY/ENzxpPET9Xz8CjHA=;
 b=BuJy/u1+eqWT2o7I4IUBGUFrCub1oblpxz4jMCU+Y0KQGlXEO7O9vYJA+Bfq2H7NQM
 6EuFzrv5gx4FTd4TfBzc+UDiXhgf9sNTxJYdFD6w5HrW+mWe6W6G5eocDB0hfYq6FrIY
 5oWM7nL76m7ySxgxQk2AuTr29UQubWu0uo+ii6zKLDhmye0VTet6J+Is+4PD5eYv/IBF
 XPXRl9wx9UqowX2T9QEniYYZNY2RwKlElL3VylRCs7ijwRX86lYJyzkT0xRHRkJaeoHB
 5+c6bc2sp6CUNqloaph/iXhXn8qNmruVrnk1wv36qg5VtjTGlGsT8h/f+OuAYP6uwsCZ
 FLaA==
X-Gm-Message-State: AOAM530GXyr42iIDkj8pe2oWcFxr5JAUOuN8Yq2W2KkOZ9I8jC6IOanU
 dxmfoUFIDrzbowVNYKtg5RFPmrQYUAk8H88zsU0=
X-Google-Smtp-Source: ABdhPJwszEs9mBfb3jyJyXY93CwUmG7QN9LRdlr4gJD7zong1QrxL+EIsgasJIWHXOdYn6lER7ZMBESVxn8hovuST+s=
X-Received: by 2002:a1c:4b0b:: with SMTP id y11mr32885454wma.9.1638145729159; 
 Sun, 28 Nov 2021 16:28:49 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:adf:f0c4:0:0:0:0:0 with HTTP; Sun, 28 Nov 2021 16:28:48
 -0800 (PST)
From: "mrs.sophia.robin" <mrs.sophiar.robin424@gmail.com>
Date: Mon, 29 Nov 2021 01:28:48 +0100
X-Google-Sender-Auth: JjlOCGTTyo7nPrR2ComeEgc3DS8
Message-ID: <CAERXgTnOw-yvnq1Te7b0RfB83RNh0mE8OMr2KLdCf8bmUGe3rA@mail.gmail.com>
Subject: Hello My Dearest
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

im Mrs.Sophia Robin,a citizen of the united state of America,I work at
HSBC Bank in Milan Italy,as Telex Manager charge of wire transfer
department,i'm contacting you personally for investment assistance and
a long term business relationship in your Country.i'm contacting you
for an important and  urgent business transaction,I want the bank to
transfer the money left by Dr.Cheng Chao,a Chinese Politician who
died,March 17th 2020,without any trace of his family members,he used
our bank to launder money overseas through the help of their Political
advisers.and most of the funds which they transferred out of the
shores of China, were gold and oil money that was supposed to have
been used to develop the continent.

Can you invest this money and also help the poor? The amount value at
$15.5million Dollars($US15,500,000),left in his account still
unclaimed,if you know that you are capable to invest this fund into
any profitable business in your country kindly send me your details
information as listed below to enable me draft you an application form
of claim along with the deposit certificate which you are going to
fill with your bank account detail necessary and contact the HSBC Bank
in Italy for immediate transfer of the Amounted sum into your bank
account direct. Percentage share will be 60,for me/40,for you.

(1) Your full name.....................
(2) Your address................
(3) Your Nationality...............
(4) Your Age / Sex.....................
(5) Your  Occupation.......................
(6) Your marital status........................
(7) Your direct telephone number..................
(8) Your photo..................

Thanks with my best regards.Mrs.Sophia Robin,
Telex Manager Milan Italy,(H.S.B.C)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
