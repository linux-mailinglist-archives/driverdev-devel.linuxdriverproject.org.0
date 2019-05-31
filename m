Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCEB30A5B
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 May 2019 10:34:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF8A7868B5;
	Fri, 31 May 2019 08:34:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KXBEQP18IeYV; Fri, 31 May 2019 08:34:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 111FC85C5C;
	Fri, 31 May 2019 08:34:05 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1B78E1BF420
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 08:34:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 07822882EB
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 08:34:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qr8R1D1iddH5
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 08:34:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 87C4D882E3
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 08:34:00 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id c3so8407146otr.3
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 01:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=yfeO04/Ui2XZGBiRyS9W+BTKL1AjRWiWrSe1pezTwkI=;
 b=l7Dtpd/UJudawBRhQ5yMy7dMSD6pAcME073jnFfEFM7ASVV+Uv9dDVnR2vkDfqzsu+
 TOXs089o0yZDY9i9hGdCB9sBKrjzoHuKhaSmUtNFOCHyElzaqPJ+Ek2OcNKOQAA13b2v
 Dv/gjb5bI/um2lY7UFfMLCZX0UMmeEcoWbRbQjQFVgCLpfYiaIErLOyWTMA9BBObpKsH
 WlzqoEi8c6eFdC3IlMGCx242hhCaZLumWcKyhEB/DqkLuxH6kHe5eDt0qmCjNEGs5mLk
 XIl5gkbu98Quf4yWhKW5qPy/H1YeIZ71bUj92ehWkGQhvNN9qmvHMHoBRIBlgGtam+F4
 HsCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=yfeO04/Ui2XZGBiRyS9W+BTKL1AjRWiWrSe1pezTwkI=;
 b=HcS2aO75uKsQvoVssp1NuMH4CqEXZ19PhttMYRk42tZQELn63OTItxcAqvRo0TLwAt
 Q+YN2EL0W5jAyODz769jGPV4yZwFBOFvIs2O72i/8Kokmm9Cb4HXUJUDf90qQhCTELD5
 luHMJtZET5h2tTkRno5CmX+HrgJaP3pCIBfsO4bvF+7pINuQMq4Ry99RbkMWO3qOBWIM
 oosp1z/bJ45VOdhlScsEhBI+8O9CnQ27BoQO1O0Yw0hj2Sf3eai1Rf6zWjWG8UaqctxQ
 esHtZjnmVDBIexNWOLBGVHtrDQawcjzZiTBzqOTrqkXoRRw45Q+B0zrjKTe2E//R0LK4
 PPSw==
X-Gm-Message-State: APjAAAVYS5XULPH8nUH/lm5yovUw/tzgxPZq+QCK9zPzSdS+HgCxJwmJ
 n3p1Ol473KkQfjC/iBxwM8p6V+hGK/GIC2wtr6Q=
X-Google-Smtp-Source: APXvYqwf1T+gyzNj4x3BIUaCJlUcs+HulRK2VvtPAbiQNS4mWstKIQxIUxHpF/Ox/3+uYKGy4GlFxgze+wwr5+hK07w=
X-Received: by 2002:a05:6830:1644:: with SMTP id
 h4mr860962otr.205.1559291639756; 
 Fri, 31 May 2019 01:33:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:7392:0:0:0:0:0 with HTTP; Fri, 31 May 2019 01:33:59
 -0700 (PDT)
From: Erena Matt George <erenageorge1234@gmail.com>
Date: Fri, 31 May 2019 08:33:59 +0000
X-Google-Sender-Auth: 7ktU1jawDFNeGlu7-I8k9Kw35f4
Message-ID: <CADTFeqCjwzg+sE8o0YOA0ZrP8fPZoPhBrquqwzciwmyFUoHPDQ@mail.gmail.com>
Subject: Greeting from
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
Reply-To: erenakgeorge123@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello dear, with the grace of God I have to find strength and courage
to write you today before is too late, my name is  Mrs. Erena Matt
George. I am married to late Mr.Desmond George, a Swiss businessman
who based in Abidjan for the period of 21 years. As faith may have it
our marriage ended without any children my husband died in a car
accident in Abu Dhabi on a business trip to United ArabEmirates.

I need your advice because I have some money in one of the leading
bank in Abidjan. I do not want to pass on this money to politicians or
greedy bankers who don't care about the poor people and less
privileged ones.I am suffering from brain cancer and my doctor has
only informed me that I will not survive after the next 9 weeks.

Even though I suffer from one hospital to another,the vanity of human
life is like a river constantly passing away, and yet always getting
ahead. Life is vanity and nothing,there are two things we need to Know
a time to be born and die,that's the word of God.

I have a sum of Nine Hundred and Eighty Thousand Euro I wish to donate
to your care for a charity project.I was moved by the will of God to
contact you for this project. I want you to reply me as soon as
possible if you agree with my offer.

Attached are my personal photos, evidence of the Fund's deposit, I am
send all of these to you to have the confidence that you are dealing
with a real person.

I prayed before I contact you and I see that you are the right person
to complete this project. So listen to my suggestion, because I count
on your good will and the proper use of these funds for the charity
work.I am looking forward for your response with more information
about you.

Full name
Address
contact number

I will stop hear as I want to take some rest now.

Thank you and God bless you

Yours

Sister.Erena Matt George.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
