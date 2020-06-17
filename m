Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A20C41FC829
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jun 2020 10:03:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F3D8894DA;
	Wed, 17 Jun 2020 08:03:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gr3xf+Z6uvj2; Wed, 17 Jun 2020 08:03:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2780C89296;
	Wed, 17 Jun 2020 08:03:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A8B2D1BF2BA
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 08:03:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8EFCB204C0
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 08:03:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o3no0ZudIKWe for <devel@linuxdriverproject.org>;
 Wed, 17 Jun 2020 08:03:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 9D39E20533
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 08:03:35 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id w16so1301721ejj.5
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 01:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=IoLOTj4N/UivUbV7Xr+eQksZLmcOCCkaL8Z2FZzpaSE=;
 b=n7fvTs+/AIa8pMpfW6aPzMLlPj+Dgki9bUAxy/WJhTzuhCBbd+H1VjHgPGq499Rpv/
 5d/Fu/pYEKH1b6nUOp+B/0rVShHG5a3F5X6E9yohIERXhGRB+jfz7fG7aLScoIpx8e+F
 hoa3YKo1A1lDCasydfb4WIy1UyVUOIk9DfVXXMnVNv4WGz8gFNusqZ8XbJsGTDUN9Fqb
 G31mdXjKpT3KyemJTlD9XocjfZeFc/GyLV2zWtdzsLpQAbvFvS3y1YSYDd18MIgGQFXl
 /yNkjvwU7T7hVY2TKYobQ4wa9+HTev7V+Zm0ABk5R4hLFzxjXuIxIeh+PmN3kmrE6ePT
 RYtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=IoLOTj4N/UivUbV7Xr+eQksZLmcOCCkaL8Z2FZzpaSE=;
 b=tLKWaksAo1lD9tzcen1iRuon1dkp03G8r4qgb5tIoz+0IdzkpcZTx/JEhfSnIA0HVZ
 5l+0qFSPmpi/Zh7h0bQgCVaSrk80QdCowZcE28M6guZL899LJFdnl+JNL8GdHT4WpFW+
 uEn/oe4fuP7deY80rAuLnpaLe4rcaGfOOKgO1v1kuxnkqsAHuQCo3v6nTlCqolpSC8IH
 s0wM+WLtU6r17C0Bx13FY7Goefg+zky3z9nxYuILpu3GEbkoQcDu4uBq4ZAIzSmXeSzm
 r4JrS3s+8lOFQW5TOz/2PuUchW/gtuNHJYE+DzBqVwnWugT1fdgkh98RN5KCE7Pgm9JW
 AB7w==
X-Gm-Message-State: AOAM533ZRXD3f4SQB0nrONpVboMIzOLQu9UE8Xy3jAni/k5zLWKgF7zr
 j6l2clsgmSkOxlbuu+Ko8UY=
X-Google-Smtp-Source: ABdhPJwEiLAyKqBWSBg/9gW1RJJ++WW+xletvVfauJvMuZRCPanBDVczGoSWbdvhRqSEjwIJMjoADg==
X-Received: by 2002:a17:906:1149:: with SMTP id
 i9mr6779545eja.100.1592381013809; 
 Wed, 17 Jun 2020 01:03:33 -0700 (PDT)
Received: from [10.31.1.6] ([194.187.249.54])
 by smtp.gmail.com with ESMTPSA id n16sm12971271ejl.70.2020.06.17.01.03.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Jun 2020 01:03:33 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH v4 0/3] mm, treewide: Rename kzfree() to kfree_sensitive()
From: Jo -l <joel.voyer@gmail.com>
In-Reply-To: <20200617003711.GD8681@bombadil.infradead.org>
Date: Wed, 17 Jun 2020 10:03:30 +0200
Message-Id: <29829792-2C3E-44D1-A337-E206F1B6C92A@gmail.com>
References: <20200616015718.7812-1-longman@redhat.com>
 <fe3b9a437be4aeab3bac68f04193cb6daaa5bee4.camel@perches.com>
 <20200616230130.GJ27795@twin.jikos.cz>
 <20200617003711.GD8681@bombadil.infradead.org>
To: Matthew Wilcox <willy@infradead.org>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, Michal Hocko <mhocko@suse.com>,
 linux-btrfs@vger.kernel.org, Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 dsterba@suse.cz, David Howells <dhowells@redhat.com>, linux-mm@kvack.org,
 linux-sctp@vger.kernel.org, keyrings@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, devel@driverdev.osuosl.org,
 linux-cifs@vger.kernel.org, linux-scsi@vger.kernel.org,
 James Morris <jmorris@namei.org>, kasan-dev@googlegroups.com,
 linux-wpan@vger.kernel.org, David Rientjes <rientjes@google.com>,
 Waiman Long <longman@redhat.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 linux-pm@vger.kernel.org, ecryptfs@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, virtualization@lists.linux-foundation.org,
 linux-integrity@vger.kernel.org, linux-nfs@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 linux-security-module@vger.kernel.org, target-devel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-crypto@vger.kernel.org,
 Johannes Weiner <hannes@cmpxchg.org>, Joe Perches <joe@perches.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, netdev@vger.kernel.org,
 wireguard@lists.zx2c4.com, linux-ppp@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Qm9uam91ciwKRMOpc29sw6ksIGF1Y3VuZSB0cmFkdWN0aW9uIHBvc3NpYmxlLCAKRW4gZnJhbsOn
YWlzIHBvdXIgY29tcHJlbmRyZSEKTWVyY2kKc2x0cwoKPiBMZSAxNyAwNiAyMDIwIMOgIDAyOjM3
LCBNYXR0aGV3IFdpbGNveCA8d2lsbHlAaW5mcmFkZWFkLm9yZz4gYSDDqWNyaXQgOgo+IAo+IE9u
IFdlZCwgSnVuIDE3LCAyMDIwIGF0IDAxOjAxOjMwQU0gKzAyMDAsIERhdmlkIFN0ZXJiYSB3cm90
ZToKPj4gT24gVHVlLCBKdW4gMTYsIDIwMjAgYXQgMTE6NTM6NTBBTSAtMDcwMCwgSm9lIFBlcmNo
ZXMgd3JvdGU6Cj4+PiBPbiBNb24sIDIwMjAtMDYtMTUgYXQgMjE6NTcgLTA0MDAsIFdhaW1hbiBM
b25nIHdyb3RlOgo+Pj4+IHY0Ogo+Pj4+IC0gQnJlYWsgb3V0IHRoZSBtZW16ZXJvX2V4cGxpY2l0
KCkgY2hhbmdlIGFzIHN1Z2dlc3RlZCBieSBEYW4gQ2FycGVudGVyCj4+Pj4gIHNvIHRoYXQgaXQg
Y2FuIGJlIGJhY2twb3J0ZWQgdG8gc3RhYmxlLgo+Pj4+IC0gRHJvcCB0aGUgImNyeXB0bzogUmVt
b3ZlIHVubmVjZXNzYXJ5IG1lbXplcm9fZXhwbGljaXQoKSIgcGF0Y2ggZm9yCj4+Pj4gIG5vdyBh
cyB0aGVyZSBjYW4gYmUgYSBiaXQgbW9yZSBkaXNjdXNzaW9uIG9uIHdoYXQgaXMgYmVzdC4gSXQg
d2lsbCBiZQo+Pj4+ICBpbnRyb2R1Y2VkIGFzIGEgc2VwYXJhdGUgcGF0Y2ggbGF0ZXIgb24gYWZ0
ZXIgdGhpcyBvbmUgaXMgbWVyZ2VkLgo+Pj4gCj4+PiBUbyB0aGlzIGxhcmdlciBhdWRpZW5jZSBh
bmQgbGFzdCB3ZWVrIHdpdGhvdXQgcmVwbHk6Cj4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9s
a21sLzU3M2IzZmJkNTkyN2M2NDM5MjBlMTM2NDIzMGMyOTZiMjNlNzU4NGQuY2FtZWxAcGVyY2hl
cy5jb20vCj4+PiAKPj4+IEFyZSB0aGVyZSBfYW55XyBmYXN0cGF0aCB1c2VzIG9mIGtmcmVlIG9y
IHZmcmVlPwo+PiAKPj4gSSdkIGNvbnNpZGVyIGtmcmVlIHBlcmZvcm1hbmNlIGNyaXRpY2FsIGZv
ciBjYXNlcyB3aGVyZSBpdCBpcyBjYWxsZWQKPj4gdW5kZXIgbG9ja3MuIElmIHBvc3NpYmxlIHRo
ZSBrZnJlZSBpcyBtb3ZlZCBvdXRzaWRlIG9mIHRoZSBjcml0aWNhbAo+PiBzZWN0aW9uLCBidXQg
d2UgaGF2ZSByYnRyZWVzIG9yIGxpc3RzIHRoYXQgZ2V0IGRlbGV0ZWQgdW5kZXIgbG9ja3MgYW5k
Cj4+IHJlc3RydWN0dXJpbmcgdGhlIGNvZGUgdG8gZG8gZWcuIHNwbGljZSBhbmQgZnJlZSBpdCBv
dXRzaWRlIG9mIHRoZSBsb2NrCj4+IGlzIG5vdCBhbHdheXMgcG9zc2libGUuCj4gCj4gTm90IGp1
c3QgcGVyZm9ybWFuY2UgY3JpdGljYWwsIGJ1dCBjb3JyZWN0bmVzcyBjcml0aWNhbC4gIFNpbmNl
IGt2ZnJlZSgpCj4gbWF5IGFsbG9jYXRlIGZyb20gdGhlIHZtYWxsb2MgYWxsb2NhdG9yLCBJIHJl
YWxseSB0aGluayB0aGF0IGt2ZnJlZSgpCj4gc2hvdWxkIGFzc2VydCB0aGF0IGl0J3MgIWluX2F0
b21pYygpLiAgT3RoZXJ3aXNlIHdlIGNhbiBnZXQgaW50byB0cm91YmxlCj4gaWYgd2UgZW5kIHVw
IGNhbGxpbmcgdmZyZWUoKSBhbmQgaGF2ZSB0byB0YWtlIHRoZSBtdXRleC4KCkpvLWwKam9lbC52
b3llckBnbWFpbC5jb20KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
