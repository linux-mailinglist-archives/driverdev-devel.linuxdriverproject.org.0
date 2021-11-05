Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFCF446448
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Nov 2021 14:40:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 695656159F;
	Fri,  5 Nov 2021 13:40:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZfLYMQOlR36f; Fri,  5 Nov 2021 13:40:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAA146159E;
	Fri,  5 Nov 2021 13:40:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 73E9F1BF304
 for <devel@linuxdriverproject.org>; Fri,  5 Nov 2021 13:40:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 63C3582656
 for <devel@linuxdriverproject.org>; Fri,  5 Nov 2021 13:40:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mszaHeDcJHEa for <devel@linuxdriverproject.org>;
 Fri,  5 Nov 2021 13:40:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com
 [IPv6:2607:f8b0:4864:20::941])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D5BED8264C
 for <devel@driverdev.osuosl.org>; Fri,  5 Nov 2021 13:40:22 +0000 (UTC)
Received: by mail-ua1-x941.google.com with SMTP id t13so1807677uad.9
 for <devel@driverdev.osuosl.org>; Fri, 05 Nov 2021 06:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=NWKMZ//AyFWFbpFk6FF66OtPadVuan7a1ybZS8hGNR8=;
 b=NljcgcOZduTwD1o2oXgPFmAQxNkrDB6ocQdFpBOhTwfJvgBYFAr8ZA2RrVqvU+bwzk
 CLxEa/iGEFcyLIJPLoDjnrCuIdQM7HLm9qTHehL5mUej3IGTw6S6yxXeh9k0oHVzJD3K
 mBFSa9zn9lipKwP6LwaHBnUXXavS4eQ4NGcKKN2SwYJ9/D4/kv8hMgWHHUKckiPMbBvx
 Sxmv74g3ai0M7OA7rlSmf4urp95nTK5PZq9N/4+pCT/9VgnDtecpB3l92vt7IsKoYtOT
 sKIVHx2L3dyYHN0PyCwwkQYMlAnAw66WJcfyIihI4iVqNSy1QPEkHhj4QXTb8F1a92np
 dV0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=NWKMZ//AyFWFbpFk6FF66OtPadVuan7a1ybZS8hGNR8=;
 b=D94M7F1LxQwu1CJoGmPSnMNKivmiz/5sn9qsVSH45zI7aKnK1BYDbdKufE3cb102Wv
 i1G9kSO3s9gWskVrZnSI9CXJeOPK14of7qr+BdneNLrEB7VbIM72Hi2aUYrjRch/1T3Z
 eMYyqSWMfUiWb+BJ6raKJeUZu68IfTGfQ8TkIcRVtNit3Q/dl+UQ+VYVGz6q0Fv0U3xG
 UR9/2J/TFFf9cf4GOIaGfNx8JibcJLvMG2uEF6cSSfeq7xtZdtn0ppNReWmn8TsWAWe7
 bi/WaJLyNsEedxxbhiXi63pAuY0oK0Ju0JLTDDxRFQQTLvox6qrs1Kh2DAnK2GKLx5He
 wwdg==
X-Gm-Message-State: AOAM532uLy4W7LfO4afobpm47eu9xzlt5wgNZc1XfzZ3+fKxVhnhkZSf
 DyK7Fxfcj3JdDk0y3YK9VmHXVluGdxfIAqHI+NQ=
X-Google-Smtp-Source: ABdhPJx7Kua2rZkCmvE0b0xpLl4H8cK+cOdlqUXySgDlA3RWNrgmVoV9yQ+Og7bbUzEc120AFfXrYZfEpyqNXvNd6o8=
X-Received: by 2002:a05:6102:3ed4:: with SMTP id
 n20mr74076774vsv.57.1636119621500; 
 Fri, 05 Nov 2021 06:40:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:20b3:0:0:0:0:0 with HTTP;
 Fri, 5 Nov 2021 06:40:20 -0700 (PDT)
From: uchenna <robertanderson6016@gmail.com>
Date: Fri, 5 Nov 2021 06:40:20 -0700
Message-ID: <CA+o7mw1iV7OVyLVXOTJE=7-D9z6dgwzdT7hrPLyHmFZSV4iAoA@mail.gmail.com>
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
Reply-To: uchennailobitenone@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attention Please,

I am Bar. uchenna ilobi ,  How are you, I hope you are fine and
healthy? This is to inform you that i have concluded the transaction
successfully with the help of a new partner from Venezuela and now the
fund has been transferred to Venezuela into the bank account of the
new partner.

Meanwhile, I have decided to compensate you with the sum of
US$350,000.00 (thiree Hundred and Fifty Thousand United States
Dollars) due to your past effort, though you disappointed me along the
line. But nevertheless I am very happy for the successful ending of
the transaction without any problem and that is the reason why i have
decided to compensate you with the sum of US$350,000.00 so that you
will share the joy with me.

I advise you to contact my secretary for Atm Card of US$350.000.00,
which I kept for you. Contact him now without any delay.

Name: solomon brandy

Email:solomonbrandyfiveone@gmail.com

Kindly reconfirm to him the following below information:

Your full name_________________________
Your address__________________________
Your country___________________________
Your age______________________________
Your occupation________________________
Your cell Phone number______________________

Note that if you did not send him the above information complete, he
will not release the Atm card to you because he has to be sure that it
is you. Ask him to send you the total sum of ($350.000.00 ) Atm card,
which I kept for you.

Best regards,

Mr. uchenna ilobi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
