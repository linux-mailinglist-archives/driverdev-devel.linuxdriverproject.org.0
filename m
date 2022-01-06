Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC879486673
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jan 2022 16:03:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AF44B40A3A;
	Thu,  6 Jan 2022 15:03:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GsYCHmUqKPtW; Thu,  6 Jan 2022 15:03:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 298FD409C6;
	Thu,  6 Jan 2022 15:03:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 924C11BF406
 for <devel@linuxdriverproject.org>; Thu,  6 Jan 2022 15:02:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 80D054294B
 for <devel@linuxdriverproject.org>; Thu,  6 Jan 2022 15:02:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yu58yaBFQKQt for <devel@linuxdriverproject.org>;
 Thu,  6 Jan 2022 15:02:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D00A14291E
 for <devel@driverdev.osuosl.org>; Thu,  6 Jan 2022 15:02:52 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id q25so1875662edb.2
 for <devel@driverdev.osuosl.org>; Thu, 06 Jan 2022 07:02:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=GYoLWRT7KY1yIQ70M5/rU/e/rL+YUWJ+qY/E7MGDX6U=;
 b=knd7ItBzQEVglJSQWyn7msbEIvCBCQKEI0rgYaBfLBW++CBKo91Ot+aMKQiB8GPebQ
 iKFq0pi48ojMP4c+fG/NGNuv66Vcj1aaTsUF4nEb80wnNMhCQYQJcVfowVvxMCN53Akx
 sbTJYmyfVtL6p4dBCGxQxyRitTYnBmYTnmxvuv3KTVs8bqK+gxnp0HnnJsfpIjkPQIi4
 HNfidVzuuO2nVJBLjCs5vQ/PWM1XpWxT2CkYhEXHDJOo6K3KD6pVzkHI9Z7Tj9WUtbUv
 Sd2gmimLwHYjopVzpZ++doGXIdIEIUHR1j7bw609c9KAx7d3OSmbNMAzyWv1OT86x1sg
 31Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=GYoLWRT7KY1yIQ70M5/rU/e/rL+YUWJ+qY/E7MGDX6U=;
 b=tBfoDGoOagGAFOBiLPdtVnxlwZ2sZ/Y8dWS03TwIdrYKT3/yBni3QPnPqgdxabh5FE
 hXc3EGEFzpakrkKEX8PaJFQOyQV0H6DMESW/mnr94kXbHzAHxPDwdc3M+cUyDUfKE80a
 QvXfWbOGwKZSWelhH3p8XOZzA806aZwZ36KEdrIuuUh52hOrwTAcE5gmlQ2LuxceRfqg
 Rcubh6TRqPVC2IYJa2RWvETgLqCYzNgrdAIQSRCLlSwUej/1R4ogtx/hwg8xPG1IM38t
 7E7UKNeURQQicxFpphFT+snj01hmSfzPl1B3upQHmWQ6beEuVKY3ZoZiAj4G8GbMcVMp
 z5mQ==
X-Gm-Message-State: AOAM533vX5EeZo28bUUYGWFPmEo+x7h0kCQXUMT8raDQbeoyg9pkXzXB
 3zesngO1GDpXC62CJFK7615/zZ3yGxqggwSVmKg=
X-Google-Smtp-Source: ABdhPJzssJCAglx1sQMtovq2v+9AU3PXYOtxwSkVeg/YA9w7Vhd4zQtFufUrsqzgHzV+/4SehiBrIlNbzGw344dcDYQ=
X-Received: by 2002:a17:906:4e0c:: with SMTP id
 z12mr16839859eju.176.1641481370430; 
 Thu, 06 Jan 2022 07:02:50 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a54:2a4d:0:0:0:0:0 with HTTP;
 Thu, 6 Jan 2022 07:02:49 -0800 (PST)
From: "Dr. Joseph Mark" <josephmark00011@gmail.com>
Date: Thu, 6 Jan 2022 15:02:49 +0000
X-Google-Sender-Auth: cjvnlGG7zai2qt-aQ6tqAfcWvtY
Message-ID: <CAPotXCOvs5=D_QACvrmJ9BKgjBk0RpwVrhBfFNbm0+BbHpBh4w@mail.gmail.com>
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
Reply-To: josephmarks20201@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear Friend,

I am Dr. Joseph Mark Work in bank. I Discovered the sum of seven
million, two hundred thousand dollars (usd7.2) belonging to a deceased
customer of this bank the fund has been lying in a suspense account
without anybody coming to put claim over the money since the account
late owner from Lebanese involved in car crash.

Therefore, I am soliciting for your assistance to come forward as the
next of kin. I have agreed that 40% of this money will be for you as
the beneficiary respect of the provision of your account and service
rendered, 60% will be for me. Then immediately the money transferred
to your account from this bank, I will proceed to your country for the
sharing of the fund.  If you think you are capable and will be
committed to making this deal successes send me an email as soon as
possible to confirm your interest.

Yours faithful,
Dr. Joseph Mark
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
