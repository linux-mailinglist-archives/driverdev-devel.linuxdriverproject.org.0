Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7004F47A6AB
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Dec 2021 10:14:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0A26607DE;
	Mon, 20 Dec 2021 09:14:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bDduFwRPtNHJ; Mon, 20 Dec 2021 09:14:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 11A3160BC1;
	Mon, 20 Dec 2021 09:14:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 64B341BF3F6
 for <devel@linuxdriverproject.org>; Mon, 20 Dec 2021 09:14:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5457B4177A
 for <devel@linuxdriverproject.org>; Mon, 20 Dec 2021 09:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MpbjB1LBYyyu for <devel@linuxdriverproject.org>;
 Mon, 20 Dec 2021 09:14:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B73F74176D
 for <devel@driverdev.osuosl.org>; Mon, 20 Dec 2021 09:14:43 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id s1so13251220wra.6
 for <devel@driverdev.osuosl.org>; Mon, 20 Dec 2021 01:14:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=h8PSSRHrHL7EZamTJ1PmpoLIiZ6v+wZ4VV6s2+7PO3k=;
 b=e2vuvhcIAv3QxTvMQBvPvkIWr3uQFbaLQXJYw0bcPR4PmBWlrsjGuwHjllgaJWbjW2
 FaAtzHTbb3rG6SNGthpsd9gMDOobdw7FSwDqJ998n0M5jk5oPP14Qg7wvQ0f0MZj/k1C
 KNXQE32Lmo6d6VkNT5idOVYoPGBNQbSjcrJHNoW8Ml3lvJDtdZpfJOu/BlHxJibm2K1K
 KDYZjLmjEBRPK3uDzdhYQ8CCVXo70SVUia3Kl98NyCQnFU8JC/24tjrYSMCRIhZ0O45D
 jw0N8i5G5CzIHpTeNQGOAeQ9pkeASUK3ALFjBui16WoHir4GeZpC3cZ4YtfZ+CfA98Wm
 Y9cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=h8PSSRHrHL7EZamTJ1PmpoLIiZ6v+wZ4VV6s2+7PO3k=;
 b=MmZlcRplCYnrZZXpkurzNapj4x0Y9j/iwrXoiDXelYsESzxPrE/YHoXaXDeGUO3O7L
 exjmRyAfU/m3nF+pImybOOqXUVHdtDqHEqpxBHFpbtZLdZl3TWXzq+h2r7MyZFieg/AQ
 DHMwdMjecwW/6mU7mrzyBxaM+nKL3apipVEOHcQ7Y4AAfodaKSgFHZOhXslx3RBl0dqu
 dfDx2hGUiYvFSeHPBeg3YyxgW/AxXuj05SAa22Ggosyo2UtKr4jl+WMrjQN7QnfKonbP
 3JHAjnWLfMqVWCzePoXM449PQqXPYvbqllTqo3fQoRKTtHCwraGk1ek2CreRunQxKDwy
 7m2w==
X-Gm-Message-State: AOAM532qBWCEIgYvn/ucTiP15rAxYPPwXd9KkLh3I+G6lOTmtwRgbY8w
 Mb85zHkMpN6fkGIqVpdSyc6RUstUv2oJBkCkllM=
X-Google-Smtp-Source: ABdhPJxc/j63PIZaYaydcSLFiVze3yOPnDrije/i3re086hVsK53u8DTo2RtsazhwXlRsifqVBwcTHyOtyq2hWwvROg=
X-Received: by 2002:a5d:5984:: with SMTP id n4mr12079659wri.563.1639991681869; 
 Mon, 20 Dec 2021 01:14:41 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6000:110c:0:0:0:0 with HTTP; Mon, 20 Dec 2021 01:14:41
 -0800 (PST)
From: Mr Ahmed Hassan <drhajizongohza@gmail.com>
Date: Mon, 20 Dec 2021 10:14:41 +0100
Message-ID: <CAPnt5yTtcg_A19QAdTJKnYrbWbWajR1FcdJ-q+TRvDDww0-n7g@mail.gmail.com>
Subject: Please respond urgently
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
Reply-To: alahmedhassan5602@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings,

I am contacting you independently of my investigation and no one is
informed of this communication. I need your urgent assistance in
transferring the sum of $11.3million immediately to your private
account.The money has been here in our Bank lying dormant for years
now without anybody coming for the claim of it.

I want to release the money to you as a relative to our deceased
customer (the account owner) who died along with his supposed NEXT OF
KIN on 16th October 2005. The Banking laws here do not allow such
money to stay more than 17 years, because the money will be recalled
to the Bank treasury account as unclaimed funds.

By indicating your interest I will send you the full details on how
the business will be executed.

Please respond urgently and delete if you are not interested.

Best Regards,
Mr. Ahmed Hassan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
