Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F012C48B0
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Nov 2020 20:46:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7F17A873CA;
	Wed, 25 Nov 2020 19:46:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wJbg6TbXqYRo; Wed, 25 Nov 2020 19:46:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ADDEF8733E;
	Wed, 25 Nov 2020 19:46:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CB63C1BF4DD
 for <devel@linuxdriverproject.org>; Wed, 25 Nov 2020 19:46:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C7D7C87341
 for <devel@linuxdriverproject.org>; Wed, 25 Nov 2020 19:46:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b22CtYkoFlSc for <devel@linuxdriverproject.org>;
 Wed, 25 Nov 2020 19:46:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5E2268733E
 for <devel@linuxdriverproject.org>; Wed, 25 Nov 2020 19:46:11 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id s8so3076607wrw.10
 for <devel@linuxdriverproject.org>; Wed, 25 Nov 2020 11:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:from:mime-version:content-transfer-encoding
 :content-description:subject:to:date:reply-to;
 bh=MT4M9SX2NqdNuOObXhIV8Gtkw+yoDX+gRyJnh+feBwM=;
 b=F23H1ibe33/1vEcPhYW514RFajYSUmVy5z5cqvn5evHTNYP6G8j2HOKWdQJIVeaRB2
 gTM5z+GEq6W6jRMYUb6ppEQ55F7YuG5QR65Ypkbe/rt++N+pc8uqKhVgovoZF79efzD2
 txjlntVUG6ujcbw23thofsmG+BDOSZpR6NEC4gtpjb1a6sDY7RLcPP66Kww8WeZ3ig29
 3iSPSaY7l0vsIAHbb89fpVcdwXiw0ihOKsb/Go38kyqksHqfJMoAqKd/sf7d5suW07sr
 K9+tetPObBYdRr+j9zUfkGfyFx4C9YDCYdsrp+D+eiT8REMM0GPhrCOwUQ6ImTN7hq0h
 fckQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:from:mime-version
 :content-transfer-encoding:content-description:subject:to:date
 :reply-to;
 bh=MT4M9SX2NqdNuOObXhIV8Gtkw+yoDX+gRyJnh+feBwM=;
 b=VEA9q2fjrkt8BlCiannJNZN9DaNzMqDJLiftHGcc+iPdiKYKgd8L7vetdhKvH7IaRC
 7mWUpMvkNnS3M7L9FUMvjqyedPHHkckhq2M7FNK/z5hJADAAJg5mk7e+3wN4S4meE0+9
 cc6vgRKLT2dk9HVPD+QrXGw4LsbxAZY+HL+LdYMmG61BxXWFhLmgLqxN6iHqMIyWkt2y
 5/7bEj2UJwQlWxdu6b9BaVkLssEndeEExkENq2xyI1TctbJQs3lwRiR3Ipw7TaOI2uXX
 YU68yeIuntN5bArdXANOYI+6Qlisl65+DVM9kILReyDkUq6zZLSxNlIqM1BeiJ1+GSAT
 JHBg==
X-Gm-Message-State: AOAM533nFBJviFlulJQX9zOjABSmwkZypQ/+Ait8NMKHbiVFdoMk6bHq
 sV7KoDb9Z1aEkq9RYUXqjQs=
X-Google-Smtp-Source: ABdhPJyLPp+XACY3r52/QyO47KNhaoqeWGqwQZtdjEV0aQgqaRjzzwk2vhhh8O4aUYAeodDh8KF3sQ==
X-Received: by 2002:adf:ec12:: with SMTP id x18mr5976599wrn.24.1606333569995; 
 Wed, 25 Nov 2020 11:46:09 -0800 (PST)
Received: from [192.168.1.152] ([102.64.149.89])
 by smtp.gmail.com with ESMTPSA id s2sm5757848wmh.37.2020.11.25.11.45.58
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Wed, 25 Nov 2020 11:46:09 -0800 (PST)
Message-ID: <5fbeb481.1c69fb81.29222.d034@mx.google.com>
From: "Dailborh R." <ritundailb333@gmail.com>
X-Google-Original-From: Dailborh R.
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Please reply to me
To: Recipients <Dailborh@osuosl.org>
Date: Wed, 25 Nov 2020 19:45:46 +0000
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
Reply-To: dailrrob.83@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I'm Dailborh R. from US. I picked interest in you and I would like to know
more about you and establish relationship with you. i will wait for
your response. thank you.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
