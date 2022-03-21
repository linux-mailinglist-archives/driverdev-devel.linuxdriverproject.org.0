Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520784E24C4
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Mar 2022 11:58:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 152FA40643;
	Mon, 21 Mar 2022 10:58:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LseAH9PS-LLv; Mon, 21 Mar 2022 10:58:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 921D440535;
	Mon, 21 Mar 2022 10:58:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4F9ED1BF271
 for <devel@linuxdriverproject.org>; Mon, 21 Mar 2022 10:58:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3E5BA608A5
 for <devel@linuxdriverproject.org>; Mon, 21 Mar 2022 10:58:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1PyD8lSeDcJH for <devel@linuxdriverproject.org>;
 Mon, 21 Mar 2022 10:58:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com
 [IPv6:2607:f8b0:4864:20::436])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A9499605AC
 for <devel@driverdev.osuosl.org>; Mon, 21 Mar 2022 10:58:30 +0000 (UTC)
Received: by mail-pf1-x436.google.com with SMTP id u17so15043485pfk.11
 for <devel@driverdev.osuosl.org>; Mon, 21 Mar 2022 03:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=E4hILv0ZJTPcTKq+HIPobDeeLsNePmqEbf2vve78uUU=;
 b=gTrk1OX6i8uCDxTftMc7RtLnhrZXx8UaGoLhtWJy1nPpugqOaiXudBkKpRECLeUFt3
 GPUqHWdZJtSZdjacBbUEu4lEOyuoo3fuadI50nN522JoYzzpVD3etTUzVnumb4LXkF0z
 TRsmsj2qSOZxF56HBW2V1Lyr1Qmgj/G2h5wUCq83+s2ngs+7LRI2AnPWaP5UabvkaXow
 kbWO8FC/LOdG2RF8xgtDcsQaqcS81+WHjP6gMnVhizuzay+VbnzyI2RH7y+LC7g7kOvO
 Or6/Wt6A33yCklFZb/MLuBAm8e0yGwwfLNpj+FrBnvdQT0UwAfHImVudIQI8dt38qoEw
 +WWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=E4hILv0ZJTPcTKq+HIPobDeeLsNePmqEbf2vve78uUU=;
 b=hxH6cMMURRoICu3eNYbfzcyQzsUSxlMHnBQMdAyUGOZT5+Fyv1M4fkn36LVFsnD1MG
 FBZuT7AkcLrZ/h98ATYpzpBPvFVXdo13K2JwHw6GTg8jKJSAeQ+l5FXlrWg10NiYGEmE
 zVM+BFR2Zg8iHCFqrIUT0WB7CRgZIiIKTSmlKYbo81NIIq1LGhqrLAdjKNllqaq22BVt
 zJAkfsblU5HTWIfvp2s3juNziMVN9FfFJ4+A7xuAFVhnFczb6xZz9bODLLR5KYYXwmRX
 evpcGQAIZsB2/hcNPvgmn9djIHTO35/ya64XNxahKJ9KU9r++nzZ6AA6/p7faO1XxSTD
 /GNg==
X-Gm-Message-State: AOAM530P0P7yHaeiKrz3GDgxm2ntntP24q6PsMX3+cxuh9KOTOQa+935
 d5N5K8C7j6keOg77duVxqR89nblo68buWFMgsUE=
X-Google-Smtp-Source: ABdhPJyGkED3VD+MfvSHptTqzD3N1sUP/fJiGg3kx7CFR+t5yk1TFTE1gWF6xvQxT71gGgQ+ebniOarW4A/i2Xuszb4=
X-Received: by 2002:a05:6a00:1152:b0:4be:ab79:fcfa with SMTP id
 b18-20020a056a00115200b004beab79fcfamr23429915pfm.3.1647860310083; Mon, 21
 Mar 2022 03:58:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90b:4c81:0:0:0:0 with HTTP; Mon, 21 Mar 2022 03:58:29
 -0700 (PDT)
From: " Dr Rhama David Benson," <bdrrhama225@gmail.com>
Date: Mon, 21 Mar 2022 03:58:29 -0700
X-Google-Sender-Auth: xl-ATy9IrwCsjhWEieoWcUIsExs
Message-ID: <CA+pGvAk1Mcuzqtvi1278swraoyiTMfMZE_VP-eG+2+U5TzSwOg@mail.gmail.com>
Subject: URGENT RESPOND
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
Reply-To: drrhamadavidbenson@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I NEED YOUR URGENT RESPOND

Dear friend,
I am Dr. Rhama David Benson, I work with an accredited bank here in Burkina
Faso.as manager in the audit department. During our last bank audits,
we discovered that an abandoned account belongs to one of our deceased
client, Mr. Park Seoungjae, a billionaire businessman.

Meanwhile, before contacting you, I did a personal investigation. to
locate one of his relatives who knows the account, but I came out
without success. I am writing to request your assistance in
transferring the sum of 10,500,000.00 (ten million five hundred
Thousand dollars) in your account.

I decided to contact you to act as his foreign business partner that
my bank will grant you recognition and will have the fund transfer to
your account. More detailed information will be sent for you.

Therefore, to start processing, I will need the following information from you:
Your full name (as written on your ID card
or passport)
Your full name.........
Your sex ..............
Your age..................
Your country...........
Passport / driving license .......
Marital status (married or single)
Your occupation.......
Your personal mobile number .....


I hope to read from you soon.
Sincerely
 Dr. Rhama David Benson,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
