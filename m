Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B07E3675ACA
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Jan 2023 18:09:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B8A641CAE;
	Fri, 20 Jan 2023 17:09:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B8A641CAE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zc9MpkraJhF3; Fri, 20 Jan 2023 17:09:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 284AF4156A;
	Fri, 20 Jan 2023 17:09:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 284AF4156A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF0DD1BF584
 for <devel@linuxdriverproject.org>; Fri, 20 Jan 2023 17:09:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C6E3882269
 for <devel@linuxdriverproject.org>; Fri, 20 Jan 2023 17:09:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6E3882269
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yIh164XpI7bQ for <devel@linuxdriverproject.org>;
 Fri, 20 Jan 2023 17:09:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58010817A5
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 58010817A5
 for <devel@driverdev.osuosl.org>; Fri, 20 Jan 2023 17:09:04 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id z5so5428191wrt.6
 for <devel@driverdev.osuosl.org>; Fri, 20 Jan 2023 09:09:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=sqZvnOlN7f0I0RkrXE7NQDS9bdyEd2HjyEpUarb1t0c=;
 b=Rs8SiM75SWwimW73Qp9qZBaSpHjGGwtMK5ZN5LgDUAJCLqaVMUDqu/mt66eQWTsF4/
 1sHOGqEM8n0/h4a4sdKo/kesn4dZpFnZgACzaTq1p99eCRTmJj2ptKMCtmNa9iTK+a7P
 URxJRxYm3ZVTZDJTk+W50sXqBHt147yygorcUMrXdpjmwRwocsTLHVZHDMO3G/1etILY
 JanVSzYHk2zX7jFBQjfxIlvsvheS+HkhJKTAc+wExeXOnpdeFKgBlPch478eZbWDWlr/
 AwgwVznMZriIDePX8F2Yx+cmq7TrvHyN1QS5t311r4ml7mx+JBq8HsfeHPJz3FTOLjDv
 b81w==
X-Gm-Message-State: AFqh2kqeUgF+qzCZzxB/fMJ/HhgSYqkosfgDlaOZT0XKoD0rCfh2ieno
 aPRf4tKEtzs7SsI94ll1aYlxxcL4IQJouPNZ+RU=
X-Google-Smtp-Source: AMrXdXs8ZAs5qGxgMvSZNshnEqWtY9X4fnj1jVrwPw9RgdAi3WA3Gc3LnJUWrm/ClnAkUFI/A5953YwFRQT4jNjSQ4k=
X-Received: by 2002:a5d:4573:0:b0:2bd:dca4:38d0 with SMTP id
 a19-20020a5d4573000000b002bddca438d0mr688745wrc.71.1674234542317; Fri, 20 Jan
 2023 09:09:02 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:adf:a44a:0:0:0:0:0 with HTTP; Fri, 20 Jan 2023 09:09:01
 -0800 (PST)
From: urgent contact <kossiamewodo1973@gmail.com>
Date: Fri, 20 Jan 2023 09:09:01 -0800
Message-ID: <CAKb22=_JnaR52Y+ex+2pJQJbKd3pWuqvgZyMZ_Txt_3fNUSaxw@mail.gmail.com>
Subject: DEAR WINNER
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sqZvnOlN7f0I0RkrXE7NQDS9bdyEd2HjyEpUarb1t0c=;
 b=CxKl9saIDaE5xIawAffujn6JJdpKFIW7Ln7716hGsInlcT1MDG2qisuy9j/yYNtGll
 Ws9k0w7zYRB5NABl3AG+y0Wffr7314H5/zRHsthb1Wg4+lGK45V4kHJnv2TMCcjm6A3Z
 U60kdCmB6tlVw3rYnR7om1DFCxyr27I8us0wQnITb+ODweSphpOPYPZlaeXd4GCtD8J+
 Oi83CMqa8MJU/rMNV08F7DJiO8VIr58pDsR+spPYDuG0zTfsPLfY6DqxqbWnBmtrWfSd
 MsHLfCp+AnWxZ1PlRtWua9hDO4MFP2NHzuv+vIqeVtltUtokQhXaki9CV83+6DhJXIQc
 NcBg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=CxKl9saI
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
Reply-To: orabank.atmcard.tg@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

INTERNATIONAL DEPARTMENT OF MOLOTTERY.

ATTENTION,

As part of the promotional raffles, the participants were
selected using a computerized voting system consisting of 100,500,000
email addresses of individuals and companies around the world as part
of an electronic promotion program designed to Encourage Internet
users worldwide. Keep in mind that you / your email address qualified
for a draw as a result of your various visits to various websites on
the Internet. your company's address, attached to the number
230-365-3071, with serial number 710-43, attracted the numbers of the
luck 8, 5, 6, 24, 19, 34 and Bonus No. 51, and therefore, won in the
second category DRAW ONLINE LOTTO DRAW.

Therefore, you have been approved to be paid an amount of $
5,800,000.000, state dollars, which is the winning amount for the
winners of The second category. This is from the total prize fund of
$38,450,000.00, which is shared among international winners in The
second category.

And today we notify you that your funds will be credited into an ATM
visa card by Ora bank, Republic of Togo. Send the following
information for the delivery of your $5,800,000.00 USD which is the
total amount which your ATM card contains. Make sure you entered the
correct data.

Your full name ========
Your country ========
Your city ========
Your phone number ======
Your home address =======

CONGRATULATIONS!
With respect,
Dr. Coovl Celestine

Contact email = orabank.atmcard.tg@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
