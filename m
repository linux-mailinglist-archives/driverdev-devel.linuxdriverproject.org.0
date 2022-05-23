Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA5A530C73
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 May 2022 11:57:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C85E483F85;
	Mon, 23 May 2022 09:57:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XAsPp6SBSnpf; Mon, 23 May 2022 09:57:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BBDD83FEC;
	Mon, 23 May 2022 09:57:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 710AB1BF378
 for <devel@linuxdriverproject.org>; Mon, 23 May 2022 09:56:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6BACF40B0D
 for <devel@linuxdriverproject.org>; Mon, 23 May 2022 09:56:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FaENsHK-F9X6 for <devel@linuxdriverproject.org>;
 Mon, 23 May 2022 09:56:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com
 [IPv6:2a00:1450:4864:20::642])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BCF2D40B35
 for <devel@driverdev.osuosl.org>; Mon, 23 May 2022 09:56:57 +0000 (UTC)
Received: by mail-ej1-x642.google.com with SMTP id gh17so14589439ejc.6
 for <devel@driverdev.osuosl.org>; Mon, 23 May 2022 02:56:57 -0700 (PDT)
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
 b=c1d+vST0TI8nTcZ1jl++88MvzTf3eW0aUSkcJ1cEo/Q5wLMFbm5XYjrcMKYhePYbvd
 1gHQsA7KMShqpci+8QmPA0nqU8PARTKWRD3pRRl+DqGOh2uO3DjC51kNUs5VkSaCjARR
 HtWOh4kT96wAhjUXGW1i+cCZ/PQkj8srF0CohKoxF8zrH8K7T8LmeZpVXYKJ8E0WwKKX
 Ppm/ppxgtMP+qL0v8zEfVXQp9Gx8z/3++ZC4KhOAANmAgWZgUYlWDvNAazT1WC03n5pM
 lk4MIFNkhnPwQ0PTnPcQHydrn25XsSSWmTmLQ3k1l14Nd93v7wbB+8YC7qbMU8SV0fy2
 zk5Q==
X-Gm-Message-State: AOAM530pSKLRX+sovHRB44AU9Glfzc3jjhjRpqYJLrqi20Ftbc29KI08
 OwSdxfipJM45TF4VrYKqA0SjEb1xRNBYAVX/RrU=
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
