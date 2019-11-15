Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0112CFE1B0
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Nov 2019 16:43:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2F8E588A92;
	Fri, 15 Nov 2019 15:43:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J1nQ30O55zLO; Fri, 15 Nov 2019 15:43:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 32F9788A45;
	Fri, 15 Nov 2019 15:43:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA9C01BF307
 for <devel@linuxdriverproject.org>; Fri, 15 Nov 2019 15:43:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CF71588A45
 for <devel@linuxdriverproject.org>; Fri, 15 Nov 2019 15:43:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RuSMFlbFW5MT for <devel@linuxdriverproject.org>;
 Fri, 15 Nov 2019 15:43:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 14E9A88A42
 for <devel@linuxdriverproject.org>; Fri, 15 Nov 2019 15:43:12 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id b5so7650915eds.12
 for <devel@linuxdriverproject.org>; Fri, 15 Nov 2019 07:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=X5NAAOrJ3bS32ihsXavVCESX6DNfXdWEE7aVqtLVIHM=;
 b=AmbB1eONrmXI5/hZ5Hjy96u68bV/mCom3g61QJB1XAxehhXjujRINpCx2V8BgukVbc
 DWgMKuDuRHgy7kylRa3LSfbQ1kTCuugIAfqcPOUlZ18/b/jpR7JaTWNyXFFbFFC/6z99
 mJkeG7X1wdz8J+KLs+PJSaB9DsP89MZy5zMo92G8jiyZlELMSokQJ5ofAHda8eT7xTak
 eEvMWA8w44gRYq4h/wKc8QAKs5Q3VGvH+s5qtkw7FvkgAK10fPfCVvpLzxhKxvesfNZb
 ofyMxQM8/t5Kun0bKeXwEsm2/EVKJJnzJk6MYJ9T//DCj4IC4fdoB2ghWeVm2rLXiLXl
 islg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=X5NAAOrJ3bS32ihsXavVCESX6DNfXdWEE7aVqtLVIHM=;
 b=FAf7S7ICFgC9K8fjhPEW6kTWsF2N4lOvBhe2iFlMHQnlR8GQybuzILt+fOeUH7dsIn
 tbgueZPZJBpieTgJ0yQUcRHpLuDEjYeDUw5F0+ueLx7uy2UNYte7qpaCyhdxf+CMFA97
 or5XQhJRJcU+Zhm7cSqxjoMQwaRP/05hpe8+TBUv3qi42S5AA8xTrUNGNeqbl2NRivGm
 MY7dQiUfblZL2V5bvPxEzeyonXjSJWn+/zlvfbtnLihaVTmFNXZtSD6nl9wOmke45Zz0
 8CQTYpPr3dyrfi9AGH5AlTCXVdxZKpld/KJ8GPkPZdh5lENf1NFe/H5XdWzmrQ1Y9Lih
 jnmw==
X-Gm-Message-State: APjAAAVKyiqTfmNeys1DGUT3Jk1z4wcT3YiyqfaepmTa1JZWRGSe8pJp
 d+aglKq8OAWZiG6lDmeqPcaFxY4+0R/PLyc9QTI=
X-Google-Smtp-Source: APXvYqyNlaDRJaaDMoCQnwA5TbddH3pqVv62wz+YJETBxF77pbCS7IXAlI1AOW+sH8SdBt6/KdLudMshEMHtFBClWUY=
X-Received: by 2002:a17:906:d143:: with SMTP id
 br3mr1706241ejb.215.1573832590411; 
 Fri, 15 Nov 2019 07:43:10 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6402:1118:0:0:0:0 with HTTP; Fri, 15 Nov 2019 07:43:09
 -0800 (PST)
From: "Ms.Mary Coster" <eco.bank1204@gmail.com>
Date: Fri, 15 Nov 2019 16:43:09 +0100
Message-ID: <CAOE+jABNsP+zdYMUsG63n6BJZZo6cAHZ5MhK6uTLJ4hNtvQZnw@mail.gmail.com>
Subject: Contact Mr. John Dave Director, Money Gram to pick up your first
 Money Gram payment $5000.00 today.
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
Reply-To: moneygram.1820@outlook.fr
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attn, Dear
Goodnews, I have deposited your transfer total amount US$4.8million
Dollars with Money Gram this morning. we agreed you will be receiving
it $5000.00 daily.
Contact Mr. John Dave Director, Money Gram to pick up your first Money
Gram payment $5000.00 today.
Contact Person; Mr. John Dave Director, Money Gram,International
Remittance-Benin
Email; moneygram.1820@outlook.fr
Telephone; +229 62619517
Please re-confirm your address to him once again such as listed below.
1.Your Full Name..............................
2.Address.........................
3.Country....................
4.Sex.........................................
5.Your telephone numbers..........................
6. Copy of your ID...........................
This is to avoid sending your funds to wrong person, He is waiting to
hear from you urgent today.
Let me know once you pick up your transfer $5000.00 today.
Finally, Note I have paid for the service fees, but only money will
send to him is $90.00 transfer fee before you can pick up the transfer
today.
Ask, Mr. John Dave Director, Money Gram to give you direction where to
send your transfer fee $90.00 only to Him Immediately so that you can
pick up $5000.00 us dollars today.
Thanks for undrstanding.
Mary Coster
m.coster@aol.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
