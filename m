Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 14945453BFC
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Nov 2021 22:56:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 46A0C80F6F;
	Tue, 16 Nov 2021 21:56:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xzj2yuaP9Nnu; Tue, 16 Nov 2021 21:56:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D307D80F62;
	Tue, 16 Nov 2021 21:56:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 049311BF964
 for <devel@linuxdriverproject.org>; Tue, 16 Nov 2021 21:56:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E738980F62
 for <devel@linuxdriverproject.org>; Tue, 16 Nov 2021 21:56:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pguwpQaYi7Dv for <devel@linuxdriverproject.org>;
 Tue, 16 Nov 2021 21:56:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com
 [IPv6:2607:f8b0:4864:20::234])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6AE4380F5D
 for <devel@driverdev.osuosl.org>; Tue, 16 Nov 2021 21:56:19 +0000 (UTC)
Received: by mail-oi1-x234.google.com with SMTP id t23so1657067oiw.3
 for <devel@driverdev.osuosl.org>; Tue, 16 Nov 2021 13:56:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=eXf2pJimcmEfFrj96yevyUv1oGJxOtGD7MOBVZDf6Vc=;
 b=O8P+ydp0WVvUa27NKgo7jmkgI5F+OnoK0pf3IB9YF15umm0AzbP+DRR6VLpBs3qXzo
 2CQjpYE/glwcqgn8Kus1TpFnUmzFzaUHAYUvm5MDQAwMpFkarwzN+etceNXiMjSqptAH
 5J7kgdB5p9o3czBd5O6f0mgL/SOVz1XY/iIOoKNJ6uR4mSYiJwuCT/FbI08Fkh0Wxhho
 azVjVSY8UZht0SZnLhfq+HDPrh/g2s0PV4mfnrLIMnD6s8KzVoYcW/TGT2VLjKCQ6oFt
 vRjtQ0J9FM8VNjjgAIW1kzH0fGdc2DLyy7tBEsgTM/N5VfVUi/e+MCQ5OxzmE0PjpPST
 g5ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=eXf2pJimcmEfFrj96yevyUv1oGJxOtGD7MOBVZDf6Vc=;
 b=Ts6D6iWM6jplf4ZhezOjPV8Y65onJtzh3zD2xoMnXqC29sBgWXP/uf+x2M13bGTDXN
 XtpwqSJHjuMkjYM9VVkxcX71oNuh3rsg21pBxd45Rpgy2z/gVXV8hBQBtdD3hA5F+9q6
 hwRqgCb6sjpXO7lywuQrhejxDzNEcgsTumMcFNjSOTh4nPyOMFsQbSIvSmFGE3ZaMA2U
 tHh3MziFHODIVtyl7bxUX4nPgqpujMlavSdEngSs29EpOH25Fq30Ycec0DkzW8pRB9ao
 WKLkiOdAbBMI/w9LkvUSnia41SBlNmVMZ5h79I7cgAhIxcyAy67q/BVCNxWmvt6qvBGS
 JRbQ==
X-Gm-Message-State: AOAM533drdbmF3CzGrhdc5LlWeDNAn5HEKp+xG0Ma/wY6asLqjqUb8Xh
 S16bs+fyvgEMkTnJnTBBTlJHyFW4hrvOFYatruc=
X-Google-Smtp-Source: ABdhPJzuJiEFhPY3u98ljshv9bXd2dcbsD4AZldA/4+TJYCj5TL3tFIl8MQi1dEaANtGWet59eB4/NtxFjVLL1irEpw=
X-Received: by 2002:a54:4f82:: with SMTP id g2mr52942269oiy.134.1637099778243; 
 Tue, 16 Nov 2021 13:56:18 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac9:59d2:0:0:0:0:0 with HTTP; Tue, 16 Nov 2021 13:56:17
 -0800 (PST)
From: "Mrs. bill Chantal" <zasdeghyuik@gmail.com>
Date: Tue, 16 Nov 2021 22:56:17 +0100
Message-ID: <CAN3i71hsvBaA1LmYve7_dXf8_WY-gsF7cv8s1R=GPJPdG=bJ8A@mail.gmail.com>
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
Reply-To: Mrs_Bill.Chantal.Lawrence@email.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Dear
You Have Been Compensated With The Sum Of 4.4 Million Dollars In This
United Nation The Payment Will Be Issue Into Atm Visa Card And Send To
You From The  Bank. You Can Contact My Uk WhatsApp Number :+442031292097
THANKS
MRS  Chantal Lawrence
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
